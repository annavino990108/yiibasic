<?php
use yii\helpers\Html;

$this->title = 'КЭТ имени Ф.В. Чижова';
?>
<hr/>
<h1><?= $news->title?></h1>
<p><?=$news->content?></p>
<?php if($news->file!=''){ ?>
<a href="<?= $news->file?>" download="" ><img src="/images/file.png"><?= $news->filename?></a>
<?php } ?>