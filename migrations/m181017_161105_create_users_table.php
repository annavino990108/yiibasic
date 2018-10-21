<?php

use yii\db\Migration;

/**
 * Handles the creation of table `users`.
 */
class m181017_161105_create_users_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('users', [
            'id' => $this->primaryKey(),
            'name' => $this->string(),
            'username' => $this->string(),
            'password' => $this->string(),
            'auth_key' => $this->string(),
            'role' => $this->string(),
            'img' => $this->string(),
            'email' => $this->string(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('users');
    }
}
