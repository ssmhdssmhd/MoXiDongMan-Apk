.class public final synthetic Landroid/support/v4/tl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/fragment/RecommendFragmant;

.field public final synthetic if:Lcom/wsw/cospa/bean/ComicSourceBean;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/fragment/RecommendFragmant;Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/tl1;->do:Lcom/wsw/cospa/fragment/RecommendFragmant;

    iput-object p2, p0, Landroid/support/v4/tl1;->if:Lcom/wsw/cospa/bean/ComicSourceBean;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/tl1;->do:Lcom/wsw/cospa/fragment/RecommendFragmant;

    iget-object v1, p0, Landroid/support/v4/tl1;->if:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/fragment/RecommendFragmant;->goto(Lcom/wsw/cospa/fragment/RecommendFragmant;Lcom/wsw/cospa/bean/ComicSourceBean;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
