.class public final synthetic Landroid/support/v4/kj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/presenter/do;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/presenter/do;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/kj;->do:Lcom/wsw/cospa/presenter/do;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/kj;->do:Lcom/wsw/cospa/presenter/do;

    check-cast p1, Lcom/wsw/cospa/bean/ComicContentBean;

    invoke-static {v0, p1}, Lcom/wsw/cospa/presenter/do;->return(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ComicContentBean;)V

    return-void
.end method
