#!/usr/bin/perl
use strict;
use warnings;

my @tasks;

sub add_task {
    print "Enter task: ";
    my $task = <STDIN>;
    chomp($task);
    push(@tasks, $task);
    print "Task added: $task\n";
}

sub view_tasks {
    print "\nYour To-Do List:\n";
    my $count = 1;
    foreach my $task (@tasks) {
        print "$count. $task\n";
        $count++;
    }
}

sub remove_task {
    print "Enter task number to remove: ";
    my $num = <STDIN>;
    chomp($num);
    if ($num > 0 && $num <= scalar @tasks) {
        print "Removed task: $tasks[$num - 1]\n";
        splice(@tasks, $num - 1, 1);
    } else {
        print "Invalid task number.\n";
    }
}

while (1) {
    print "\nOptions: (1) Add Task (2) View Tasks (3) Remove Task (4) Exit\n";
    print "Choose an option: ";
    my $choice = <STDIN>;
    chomp($choice);

    if ($choice == 1) {
        add_task();
    } elsif ($choice == 2) {
        view_tasks();
    } elsif ($choice == 3) {
        remove_task();
    } elsif ($choice == 4) {
        print "Goodbye!\n";
        last;
    } else {
        print "Invalid option. Try again.\n";
    }
}
