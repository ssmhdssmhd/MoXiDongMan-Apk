.class public final synthetic Landroid/support/v4/ln;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/fragment/ComicFindFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/fragment/ComicFindFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ln;->do:Lcom/wsw/cospa/fragment/ComicFindFragment;

    return-void
.end method


# virtual methods
.method public final onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ln;->do:Lcom/wsw/cospa/fragment/ComicFindFragment;

    invoke-static {v0, p1}, Lcom/wsw/cospa/fragment/ComicFindFragment;->else(Lcom/wsw/cospa/fragment/ComicFindFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method
