.class Lcom/wsw/cospa/fragment/RecommendFragmant$if;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/fragment/RecommendFragmant;->finally(Lcom/wsw/cospa/bean/ComicSourceBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Lcom/wsw/cospa/vo/FindParentVo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/fragment/RecommendFragmant;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/fragment/RecommendFragmant;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant$if;->do:Lcom/wsw/cospa/fragment/RecommendFragmant;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/wsw/cospa/vo/FindParentVo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant$if;->do:Lcom/wsw/cospa/fragment/RecommendFragmant;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/fragment/RecommendFragmant;->throw(Lcom/wsw/cospa/vo/FindParentVo;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/vo/FindParentVo;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/fragment/RecommendFragmant$if;->do(Lcom/wsw/cospa/vo/FindParentVo;)V

    return-void
.end method
