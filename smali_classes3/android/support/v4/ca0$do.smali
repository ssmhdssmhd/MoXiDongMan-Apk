.class public Landroid/support/v4/ca0$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/ca0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private do:Ljava/lang/String;

.field private for:Ljava/lang/String;

.field private if:Landroid/support/v4/oa0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/oa0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/ca0$do;->do:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroid/support/v4/ca0$do;->if:Landroid/support/v4/oa0;

    .line 4
    iput-object p3, p0, Landroid/support/v4/ca0$do;->for:Ljava/lang/String;

    return-void
.end method

.method public static synthetic do(Landroid/support/v4/ca0$do;)Landroid/support/v4/oa0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/ca0$do;->if:Landroid/support/v4/oa0;

    return-object p0
.end method

.method public static synthetic for(Landroid/support/v4/ca0$do;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/ca0$do;->for:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic if(Landroid/support/v4/ca0$do;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/ca0$do;->do:Ljava/lang/String;

    return-object p0
.end method
