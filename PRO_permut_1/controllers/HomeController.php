<?php

namespace Controllers;

use \Router;

class HomeController extends Router {

    /**
     * Displays the homepage with the latest news
     *
     * This method is responsible for fetching all the news articles via the `ActualityManager` model,
     * then rendering the 'home' view using the 'layout' layout, passing the necessary data
     * to the view, including the integral configuration and the list of news articles.
     *
     * @param   void
     * @return  void
     */
    public function display(): void {
        
        (new \Models\AutoSaveDatabase())->save();

        // Render the 'home' view with the 'layout' layout and pass the necessary data to the view
        $this->render('home', 'layout', [
            'page' => 'Accueil'
        ]);
    }
}