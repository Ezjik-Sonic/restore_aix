#!/usr/bin/perl 
use strict;
use warnings;
use Data::Dumper;


##### Prepare

sub prepare_mksysb {
    check_netbackup_access();
    check_hosts();
    prepare_chname_file();
    restore_mksysb();
}

sub restore_mksysb{
    # Выполняем сам restore
}

sub prepare_chname_file {
    # Создаем файл для рестора в другую дирикторию
}
sub check_hosts {
    # Достаточно ли места в /export
        # Если нет, 
        #     Если место в rootvg,
        #         Нет - exit
        #         Да - расширяем

}

sub check_netbackup_access {
    # bplist 
    # Есть ли доступ ?
    # Список бекапов
    # Размер бекапа
}

sub prepare_nim {
    # Создаем mksysb ресурс
    # Создаем спот ресурс
    # Создаем bos_inst ресурс для тихой установки
}

sub prepare_setup {
    prepare_mksysb();
    prepare_nim();
}



sub check_mksysb_information {
    # chroot или export ?
    # собираем информацию:
    #     lpar id
    #     SerialNumber ноды
    #     hostname
    #     ip adress
    #     default route
    #     netmask
}

sub check_nim_information {
    # Лпар доступна?
    # Собираем инфрмацию:
    #     hostname
    #     ip address
    #     default route
    #     netmask
}

sub check_remote_hosts_information {
    # Posssible ???
}

sub prepare_checks {
    check_mksysb_information();
    check_nim_information();
    check_remote_hosts_information();
}


#### \\\ Prepare 
#### Diff information

sub diff_info {
    # Вывовдим данные: - В большинстве случаев новые и старые данные должны совпадать, иначе переустановка идет с изминениями
    #     которые будет после рестора AIX
    #         новый ip
    #         новый hostname
    #         новый default route
    #         новая маска подсети
    #         СериалНамбер Ноды на который будет произведена установка
    #         Новый lpar id
    #     Старые данные которые собраны из prepare_nim
    #         lpar id
    #         SerialNumber ноды
    #         hostname
    #         ip adress
    #         default route
    #         netmask
    #     Данные собранные с текущей системы (Если она доступна)
    #         lpar id
    #         SerialNumber ноды
    #         hostname
    #         ip adress
    #         default route
    #         netmask

    # Просим пользователя проверить данные  и если все ОК, то продолжаем установку.
}

##### \\\ DIF

#### Рестор

sub run_restore {
    # Если lpar доступна
    # Если Lpar не доступна
}

#### \\\ Рестор
#### Передаем дальше управление shell скрипту который подключится к fsm/hmc и откроет консоль

sub main{
    prepare_setup();
    prepare_checks();

    diff_info();

    run_restore();

    
}
main();