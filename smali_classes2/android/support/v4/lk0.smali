.class public Landroid/support/v4/lk0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/lk0$do;
    }
.end annotation


# static fields
.field private static do:Landroid/support/v4/lk0$do;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()Landroid/support/v4/lk0$do;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/lk0;->do:Landroid/support/v4/lk0$do;

    return-object v0
.end method

.method public static if(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/lk0$do;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/lk0$do;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/lk0;->do:Landroid/support/v4/lk0$do;

    return-void
.end method
