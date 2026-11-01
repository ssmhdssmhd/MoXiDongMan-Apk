.class public final synthetic Landroid/support/v4/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/fragment/BookShelfFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/fragment/BookShelfFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ab;->do:Lcom/wsw/cospa/fragment/BookShelfFragment;

    return-void
.end method


# virtual methods
.method public final onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ab;->do:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-static {v0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->import(Lcom/wsw/cospa/fragment/BookShelfFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method
