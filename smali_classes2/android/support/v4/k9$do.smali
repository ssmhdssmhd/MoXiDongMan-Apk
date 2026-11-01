.class public Landroid/support/v4/k9$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/k9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public do:Landroid/graphics/Bitmap;

.field public for:Ljava/lang/Exception;

.field public if:Landroid/support/v4/a90;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/support/v4/a90;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/a90;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/k9$do;->do:Landroid/graphics/Bitmap;

    .line 3
    iput-object p2, p0, Landroid/support/v4/k9$do;->if:Landroid/support/v4/a90;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Landroid/support/v4/k9$do;->for:Ljava/lang/Exception;

    return-void
.end method
