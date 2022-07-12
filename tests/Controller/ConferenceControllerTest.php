<?php

namespace App\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class ConferenceControllerTest extends WebTestCase
{
    public function testIndex()
    {
        $client = static::createClient();
        $client->request('GET', '/');
//        The $client variable simulates a browser. Instead of making HTTP calls to the server though,
//        it calls the Symfony application directly.
//        This strategy has several benefits: it is much faster than having round-trips between the client and the server,
//        but it also allows the tests to introspect the state of the services after each HTTP request.

        $this->assertResponseIsSuccessful(); //Check the homepage returns 200
        $this->assertSelectorTextContains('h2', 'Give your feedback');
    }

    public function testConferencePage()
    {
        $client = static::createClient();
        $crawler = $client->request('GET', '/'); // go to homepage

        $this->assertCount(2, $crawler->filter('h4')); //check conference count

        $client->clickLink('View');  // if have 2 link this will click the first

        $this->assertPageTitleContains('Amsterdam');//check the title where we went
        $this->assertResponseIsSuccessful();
        $this->assertSelectorTextContains('h2', 'Amsterdam 2019');
        $this->assertSelectorExists('div:contains("There are 1 comments")');
    }

    public function testCommentSubmission()
    {
        $client = static::createClient();
        $client->request('GET', '/conference/amsterdam-2019');
        $client->submitForm('Submit', [
           'comment_form[author]' => 'Commentman',
           'comment_form[text]' => 'some random comment text',
           'comment_form[email]' => 'test@test.te',
           'comment_form[photo]' => dirname(__DIR__, 2).'public/images/under-construction.gif',
        ]);

        $this->assertResponseRedirects();
        $client->followRedirect();
        $this->assertSelectorExists('div:contains("There are 2 comments")');
    }
}