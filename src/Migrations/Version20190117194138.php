<?php declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20190117194138 extends AbstractMigration
{
    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE order_detail (id INT AUTO_INCREMENT NOT NULL, orderid INT DEFAULT NULL, userid INT DEFAULT NULL, productid INT DEFAULT NULL, price INT DEFAULT NULL, quantity INT DEFAULT NULL, amount INT DEFAULT NULL, name VARCHAR(150) DEFAULT NULL, status VARCHAR(15) DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE orders (id INT AUTO_INCREMENT NOT NULL, userid INT DEFAULT NULL, amount INT DEFAULT NULL, name VARCHAR(20) DEFAULT NULL, address VARCHAR(150) DEFAULT NULL, city VARCHAR(15) DEFAULT NULL, phone VARCHAR(15) DEFAULT NULL, shipinfo VARCHAR(255) DEFAULT NULL, status VARCHAR(15) DEFAULT NULL, note VARCHAR(255) DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE category DROP created_at, DROP updated_at');
        $this->addSql('ALTER TABLE user DROP address, DROP city, DROP phone, CHANGE roles roles VARCHAR(50) DEFAULT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('DROP TABLE order_detail');
        $this->addSql('DROP TABLE orders');
        $this->addSql('ALTER TABLE category ADD created_at DATETIME DEFAULT CURRENT_TIMESTAMP, ADD updated_at DATETIME DEFAULT CURRENT_TIMESTAMP');
        $this->addSql('ALTER TABLE user ADD address VARCHAR(150) DEFAULT NULL COLLATE utf8mb4_unicode_ci, ADD city VARCHAR(255) DEFAULT NULL COLLATE utf8mb4_unicode_ci, ADD phone VARCHAR(15) DEFAULT NULL COLLATE utf8mb4_unicode_ci, CHANGE roles roles VARCHAR(255) DEFAULT \'\' COLLATE utf8mb4_unicode_ci');
    }
}
