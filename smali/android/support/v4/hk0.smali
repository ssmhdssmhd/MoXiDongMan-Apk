.class public final synthetic Landroid/support/v4/hk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/hk0;->do:Lcom/wsw/cospa/activity/HomeActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/hk0;->do:Lcom/wsw/cospa/activity/HomeActivity;

    check-cast p1, Lcom/wsw/cospa/bean/BlockComic;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/HomeActivity;->abstract(Lcom/wsw/cospa/activity/HomeActivity;Lcom/wsw/cospa/bean/BlockComic;)V

    return-void
.end method
