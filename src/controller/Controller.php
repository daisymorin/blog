<?php

namespace App\src\controller;

use App\config\Request;
use App\src\DAO\ArticleDAO;
use App\src\model\View;


abstract class Controller
{
    protected $articleDAO;
    protected $view;
    private $request;
    protected $get;
    protected $post;
    protected $session;

    public function __construct(){
        $this->articleDAO = neW ArticleDAO();
        $this->view = new View();
        $this->request = new Request();
        $this->get = $this->request->getGet();
        $this->post = $this->request->getPost();
        $this->session = $this->request->getSession();
    }
}