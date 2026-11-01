.class public Landroid/support/v4/uh0$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/uh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private do:Landroid/support/v4/qe0;

.field private for:Landroid/support/v4/fd1;

.field private if:Landroid/support/v4/qe0;


# direct methods
.method public constructor <init>(Landroid/support/v4/qe0;Landroid/support/v4/qe0;Landroid/support/v4/fd1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/uh0$do;->do:Landroid/support/v4/qe0;

    iput-object p2, p0, Landroid/support/v4/uh0$do;->if:Landroid/support/v4/qe0;

    iput-object p3, p0, Landroid/support/v4/uh0$do;->for:Landroid/support/v4/fd1;

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/qe0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/uh0$do;->do:Landroid/support/v4/qe0;

    return-object v0
.end method

.method public for()Landroid/support/v4/qe0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/uh0$do;->if:Landroid/support/v4/qe0;

    return-object v0
.end method

.method public if()Landroid/support/v4/fd1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/uh0$do;->for:Landroid/support/v4/fd1;

    return-object v0
.end method
