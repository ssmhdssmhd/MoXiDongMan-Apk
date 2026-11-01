.class public final synthetic Landroid/support/v4/ib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/fragment/BookShelfFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/fragment/BookShelfFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ib;->do:Lcom/wsw/cospa/fragment/BookShelfFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ib;->do:Lcom/wsw/cospa/fragment/BookShelfFragment;

    check-cast p1, Lcom/wsw/cospa/bean/BannerInfo;

    invoke-static {v0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->throw(Lcom/wsw/cospa/fragment/BookShelfFragment;Lcom/wsw/cospa/bean/BannerInfo;)V

    return-void
.end method
