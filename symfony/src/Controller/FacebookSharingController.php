<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

use Hybridauth\Hybridauth;
use Hybridauth\HttpClient;

class FacebookSharingController extends AbstractController
{
    #[Route('/facebooksharing', name: 'facebook_sharing', methods: ['GET'])]
    public function index(): JsonResponse
    {


$client_id='344645570788364';//client id
$client_secret='e639e2700076e8383b26b3219a64c8b4';//client secret
$accoount_id='233995502118814';//id konta facebook, odczytywac $userProfile = $adapter->getUserProfile();
$scope='ads_management, ads_read, attribution_read, business_management, catalog_management, email, groups_access_member_info, instagram_basic, instagram_content_publish, instagram_manage_comments, instagram_manage_insights, leads_retrieval, pages_manage_ads, pages_manage_cta, pages_manage_instant_articles, pages_manage_engagement, pages_manage_metadata, pages_manage_posts, pages_messaging, pages_read_engagement, pages_read_user_content, pages_show_list, public_profile, publish_to_groups, publish_video, read_insights, user_age_range, user_birthday, user_friends, user_gender, user_hometown, user_likes, user_link, user_location, user_photos, user_posts, user_videos';
$page_id='109265244859583'; //odczytwac $apiResponse=$adapter->apiRequest(''.$accoount_id.'/accounts');
$page_access_token='EAAE5dAzRZCAwBAPuyiftIXK36ByYt3Ct5ypnUS74tihWbyFJYflGJCMD2PfltEMK67WE6MHh5WJ1CPuFrU9NenPA1FgCzA05GTXVeiF3AU6CmKZBmtlNWn8NqrmcZAUjnw73zngvCv5BvTy0xcQdQGaUsofERdmTQRHaZAngZAU4uYl5hvoGK'; //odczytwac $apiResponse=$adapter->apiRequest(''.$accoount_id.'/accounts');
$appsecret_proof=hash_hmac('sha256', $page_access_token, $client_secret);

$config = [
    'callback' => HttpClient\Util::getCurrentUrl(),

    'providers' => [
        //'GitHub' => [
        //    'enabled' => true,
        //    'keys' => ['id' => '', 'secret' => ''],
        //],

        //'Google' => [
        //    'enabled' => true,
        //    'keys' => ['id' => '', 'secret' => ''],
        //],

        'Facebook' => [
            'enabled' => true,
            'keys' => ['id' => $client_id, 'secret' => $client_secret],
            "scope" => $scope, // optional
            //"scope" => "pages_read_engagement, pages_manage_posts",
        ],

        //'Twitter' => [
        //    'enabled' => true,
        //    'keys' => ['key' => '', 'secret' => ''],
        //]
    ],


];



try {
    $hybridauth = new Hybridauth($config);


    //$adapter = $hybridauth->authenticate('Facebook');
        $adapter = $hybridauth->getAdapter('Facebook');
        $adapter->setAccessToken(['access_token' => 'EAAE5dAzRZCAwBAEPL2jk6OodmstnefnSHZBJO9ovXnQYZAvsH7oP9mxGoYAyrQifslM7bZBa9V4imByZBYPfiLyZCXAglKdvXLnkmoG5bCWc6AgoeBzg6DDAtByO1AQQy00tMkvMH4DfOBLa1zl6DAU8ecaSKA3KVzZAPGl012f3huzJWJS7NMTwWPJyegK43o09NnRWFpsqNXTNC3uvHty0f2rvW8JSbFrS8OSqkrMOQZDZD']);

    //echo('<pre>');
    //$tokens = $adapter->getAccessToken();print_r($tokens);
    //$userProfile = $adapter->getUserProfile();print_r($userProfile);
    //$getUserPages = $adapter->getUserPages();print_r($getUserPages);
    //echo('</pre>');

    //$apiResponse=$adapter->apiRequest(''.$accoount_id.'/accounts');
    //echo('<pre>');print_r($apiResponse);echo('</pre>');

    //echo urlencode('testMessageąśś+A%20B+ACB2 hej 🐶 hej 221   &nbsp; ABC 123a');
    //publish post
    $response=$adapter->apiRequest($page_id.'/feed',
                      'POST',
                      [
                          'appsecret_proof'=>$appsecret_proof,
                          'access_token'=>$page_access_token,
                          'message'=>'testMessageąśś+A%20B+ACB2 hej 🐶 hej 221   &nbsp; ABC 123',
                      ],
                      [
                      //'appsecret_proof'=>$appsecret_proof,
                      //'message'=>'HelloWorld',
                      ],
                      false
    );
    //var_dump($apiResponse);
    print_r((array)$response);
    

    //publikowanie zdjęcia
    //$response=$adapter->apiRequest($page_id.'/photos',
    //                  'POST',
    //                  [
    //                      'url'=>'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt584rMTJ8Yqb6UxgqiV130sgnmDVEMSp8Bw&usqp=CAU',
    //                      'message'=>'ABCDEFG https://wp.pl test 🐶 123 #hashtag1 #hashtag2',
    //                      'appsecret_proof'=>$appsecret_proof,
    //                      'access_token'=>$page_access_token
    //                  ],
    //                  [
    //                  ],
    //                  true
    //);
    //echo('<pre>');var_dump($apiResponse);print_r($response);echo('</pre>');

    //publikowanie kilku zdjec
    //zdjecia musza byc wczesniej nie opublikowane i rozne od siebie
    //nalezy najpierw wgrac zdjecia, a pozniej opublikowac w fanpage
    //----------------------------------------------------------------------------------
    //$response=$adapter->apiRequest($page_id.'/photos',
    //                  'POST',
    //                  [
    //                     'published'=>'false',
    //                      'url'=>'https://www.cpp.edu/~jcmcgarvey/5200/labs/images/butterfly.jpg',
    //                      //'message'=>'ABCDEFG https://wp.pl test 🐶 123 #hashtag1 #hashtag2',
    //                      'appsecret_proof'=>$appsecret_proof,
    //                      'access_token'=>$page_access_token,
    //                  ],
    //                  [
    //                  ],
    //                  true
    //);
    //echo('<pre>');var_dump($apiResponse);print_r($response);echo('</pre>');
    //$response=$adapter->apiRequest($page_id.'/feed',
    //                  'POST',
    //                  [
    //                      'attached_media[0]' => '{"media_fbid":"110615974724510"}',
    //                      'attached_media[1]' => '{"media_fbid":"110616711391103"}',
    //                      'message'=>'OPtABCDEFGAA https://wp.pl test 🐶 123 #hashtag1 #hashtag2',
    //                      //'user_title'=>'ABC',
    //                      //'user_msg'=>'123',
    //                      'appsecret_proof'=>$appsecret_proof,
    //                      'access_token'=>$page_access_token
    //                  ],
    //                  [
    //                  ],
    //                  true
    //);
    //echo('<pre>');var_dump($apiResponse);print_r($response);echo('</pre>');
    //----------------------------------------------------------------------------------

    $adapter->disconnect();
} catch (\Exception $e) {
    echo $e->getMessage();
}

    
    


$dane=Array();
        return new JsonResponse(
            $dane
        );
    }
}
