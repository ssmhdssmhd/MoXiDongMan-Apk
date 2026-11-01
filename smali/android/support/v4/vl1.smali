.class public final synthetic Landroid/support/v4/vl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/fragment/RecommendFragmant;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/fragment/RecommendFragmant;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/vl1;->do:Lcom/wsw/cospa/fragment/RecommendFragmant;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/vl1;->do:Lcom/wsw/cospa/fragment/RecommendFragmant;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/wsw/cospa/fragment/RecommendFragmant;->else(Lcom/wsw/cospa/fragment/RecommendFragmant;Ljava/util/List;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
