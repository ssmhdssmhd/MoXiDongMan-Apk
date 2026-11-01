.class public Landroid/support/v4/o0$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private do:Ljava/io/InputStream;

.field private if:Landroid/support/v4/sk2;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Landroid/support/v4/sk2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/o0$do;->do:Ljava/io/InputStream;

    .line 3
    iput-object p2, p0, Landroid/support/v4/o0$do;->if:Landroid/support/v4/sk2;

    return-void
.end method

.method public static synthetic do(Landroid/support/v4/o0$do;)Landroid/support/v4/sk2;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/o0$do;->if:Landroid/support/v4/sk2;

    return-object p0
.end method

.method public static synthetic if(Landroid/support/v4/o0$do;)Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/o0$do;->do:Ljava/io/InputStream;

    return-object p0
.end method
