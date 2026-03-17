<?php
namespace Cdsenquete\Model;

defined('_JEXEC') or die;

use Joomla\CMS\MVC\Model\ListModel;
use Joomla\CMS\Factory;

class EnquetesModel extends ListModel
{
    public function getItems()
    {
        $db = Factory::getDatabase();
        $query = $db->getQuery(true)
            ->select('*')
            ->from($db->quoteName('#__cdsenquete_enquetes'))
            ->where($db->quoteName('published') . ' = 1')
            ->order($db->quoteName('created') . ' DESC');
        
        $db->setQuery($query);
        return $db->loadObjectList();
    }
}