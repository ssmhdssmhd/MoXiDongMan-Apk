.class Lcom/wsw/cospa/fragment/ComicChannelDialog$do;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/fragment/ComicChannelDialog;->if()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/fragment/ComicChannelDialog;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/fragment/ComicChannelDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog$do;->do:Lcom/wsw/cospa/fragment/ComicChannelDialog;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$else;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;F)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public if(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog$do;->do:Lcom/wsw/cospa/fragment/ComicChannelDialog;

    invoke-static {p1}, Lcom/wsw/cospa/fragment/ComicChannelDialog;->do(Lcom/wsw/cospa/fragment/ComicChannelDialog;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r(I)V

    :cond_0
    return-void
.end method
