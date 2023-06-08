<?php
//Not used
namespace App\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

use Paynow\Client;
use Paynow\Environment;
use Paynow\Exception\PaynowException;
use Paynow\Service\Payment;

class PaynowController extends AbstractController
{                                                                               
    #[Route('/paynow', name: 'paynow')]
    public function index(): Response
    {                                                       //die;
    
$client = new Client('65c2f8a5-0aca-4ee1-8f9c-ad6267557b5d', 'ff46d6a6-4b15-47fb-8f4c-a2b4ad4d2349', Environment::SANDBOX);
//$client = new Client('', '', Environment::PRODUCTION);
$orderReference = "success_1234567";
$idempotencyKey = uniqid($orderReference . '_');

$paymentData = [
    'amount' => '100',
    'currency' => 'PLN',
    'externalId' => $orderReference,
    'description' => 'Payment description',
    'buyer' => [
        'email' => 'customer@domain.com'
    ]
];

try {
    $payment = new Payment($client);
    $result = $payment->authorize($paymentData, $idempotencyKey);
    
    echo('<pre>-');print_r($result);echo('</pre>');
    print_r(get_class_methods($result));
    
} catch (PaynowException $exception) {
    // catch errors
    echo('errror');
}
    
        return new Response(
            'response'
        );
    }
}
