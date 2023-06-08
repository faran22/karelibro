<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AllegroCurlController extends AbstractController
{

protected string $url;
protected string $method;
protected Array $data;
protected string $bearer;
protected int $responseCode;
protected string $responseData;
protected string $contentType;

    public function set(string $url,string $method,Array $data, string $bearer, string $any): void
    {
        $this->url = $url;
        $this->method = $method;
        $this->data = $data;
        $this->bearer = $bearer;
    }

    public function prepareData(): void
    {
    
    $header=["Authorization: ".$this->bearer];

    $url=$this->url;
    
    //zamiana url api środowiska testowego na środowisko produkcyjne
    if ((string)$_SERVER['REMOTE_ADDR']!==(string)'83.28.111.70!'){$url = str_replace(".allegrosandbox.pl/", "/", $url);}
    //die($url);
    
    $ch = curl_init($url);

    if ($this->method==='GET'){
    array_push($header, "Accept: application/vnd.allegro.public.v1+json");
    curl_setopt($ch,CURLOPT_CUSTOMREQUEST, 'GET' );
    }
    elseif ($this->method==='DELETE'){
    array_push($header, "Accept: application/vnd.allegro.public.v1+json");
    curl_setopt($ch,CURLOPT_CUSTOMREQUEST, 'DELETE' );
    }
    else if ($this->method==='POST'){
    array_push($header, "Accept: application/vnd.allegro.public.v1+json");
    array_push($header, "Content-Type: application/vnd.allegro.public.v1+json");
    curl_setopt($ch,CURLOPT_CUSTOMREQUEST, 'POST' );
    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($this->data));
    }
    else if ($this->method==='PUT'){
    array_push($header, "Accept: application/vnd.allegro.public.v1+json");
    array_push($header, "Content-Type: application/vnd.allegro.public.v1+json");
    curl_setopt($ch,CURLOPT_CUSTOMREQUEST, 'PUT' );
    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($this->data));
    }
    
    
    curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
    
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 7); //maks liczba sekund oczekiwania na polaczenie
    curl_setopt($ch, CURLOPT_TIMEOUT, 7); //maks liczba sekund trwania polaczenia
    

    //curl_setopt($ch, CURLOPT_POSTFIELDS,  "client_id=".CLIENT_ID."");
    //curl_setopt($ch, CURLOPT_POSTFIELDS, $fields_string);
    
    $this->responseData = curl_exec($ch);
    $this->responseCode=curl_getinfo($ch, CURLINFO_HTTP_CODE);
    $this->contentType=curl_getinfo($ch, CURLINFO_CONTENT_TYPE);
    curl_close($ch);
    
    }
    
    public function code(): int
    {
    return $this->responseCode;
    }
    
    public function data(): string
    {
    return $this->responseData;
    }
    
    public function content(): string
    {
    return $this->contentType;
    }
    
}
