.class Lcom/wsw/cospa/adapter/FindComicAdaprter$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/adapter/FindComicAdaprter;->if(Lcom/wsw/cospa/adapter/FindComicAdaprter$FindViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/vo/FindParentVo;

.field public final synthetic if:Lcom/wsw/cospa/adapter/FindComicAdaprter;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/FindComicAdaprter;Lcom/wsw/cospa/vo/FindParentVo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/FindComicAdaprter$do;->if:Lcom/wsw/cospa/adapter/FindComicAdaprter;

    iput-object p2, p0, Lcom/wsw/cospa/adapter/FindComicAdaprter$do;->do:Lcom/wsw/cospa/vo/FindParentVo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/adapter/FindComicAdaprter$do;->if:Lcom/wsw/cospa/adapter/FindComicAdaprter;

    invoke-static {p1}, Lcom/wsw/cospa/adapter/FindComicAdaprter;->do(Lcom/wsw/cospa/adapter/FindComicAdaprter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindComicAdaprter$do;->do:Lcom/wsw/cospa/vo/FindParentVo;

    invoke-static {p1, v0}, Lcom/wsw/cospa/activity/FindCategoryActivity;->throws(Landroid/content/Context;Lcom/wsw/cospa/vo/FindParentVo;)V

    return-void
.end method
