<?php
defined('_JEXEC') or die;

use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Router\Route;

HTMLHelper::(_('behavior.core'));
?>

<div class="container">
    <h1><?php echo $this->escape($this->params->get('page_title', 'Surveys')); ?></h1>
    
    <?php if (empty($this->items)): ?>
        <p><?php echo JText::_('COM_CDSENQUETE_NO_ENQUETES'); ?></p>
    <?php else: ?>
        <div class="row">
            <?php foreach ($this->items as $item): ?>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $this->escape($item->title); ?></h5>
                            <p class="card-text"><?php echo HTMLHelper::_('string.truncate', $item->description, 100); ?></p>
                            <a href="<?php echo Route::_('index.php?view=enquete&id=' . $item->id); ?>" class="btn btn-primary">
                                <?php echo JText::_('COM_CDSENQUETE_TAKE_SURVEY'); ?>
                            </a>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    <?php endif; ?>
</div>