.class public Landroid/support/v4/ks0$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/ks0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public do:I

.field public for:I

.field public if:I

.field public new:Landroid/support/v4/au;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/support/v4/ks0$do;->do:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Landroid/support/v4/ks0$do;->if:I

    .line 4
    iput v0, p0, Landroid/support/v4/ks0$do;->for:I

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Landroid/support/v4/ks0$do;->do:I

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Landroid/support/v4/ks0$do;->if:I

    .line 3
    iput v0, p0, Landroid/support/v4/ks0$do;->for:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroid/support/v4/ks0$do;->new:Landroid/support/v4/au;

    return-void
.end method
