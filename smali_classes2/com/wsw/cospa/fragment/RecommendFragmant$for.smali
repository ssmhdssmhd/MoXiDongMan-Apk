.class Lcom/wsw/cospa/fragment/RecommendFragmant$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flyco/tablayout/listener/OnTabSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/fragment/RecommendFragmant;->throw(Lcom/wsw/cospa/vo/FindParentVo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/fragment/RecommendFragmant;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/fragment/RecommendFragmant;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant$for;->do:Lcom/wsw/cospa/fragment/RecommendFragmant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselect(I)V
    .locals 0

    return-void
.end method

.method public onTabSelect(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant$for;->do:Lcom/wsw/cospa/fragment/RecommendFragmant;

    invoke-static {v0}, Lcom/wsw/cospa/fragment/RecommendFragmant;->class(Lcom/wsw/cospa/fragment/RecommendFragmant;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant$for;->do:Lcom/wsw/cospa/fragment/RecommendFragmant;

    invoke-static {v0}, Lcom/wsw/cospa/fragment/RecommendFragmant;->class(Lcom/wsw/cospa/fragment/RecommendFragmant;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant$for;->do:Lcom/wsw/cospa/fragment/RecommendFragmant;

    invoke-static {v0}, Lcom/wsw/cospa/fragment/RecommendFragmant;->class(Lcom/wsw/cospa/fragment/RecommendFragmant;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-virtual {p1}, Lcom/wsw/cospa/fragment/FindColumnFragment;->volatile()V

    :cond_0
    return-void
.end method

.method public onTabSelected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant$for;->do:Lcom/wsw/cospa/fragment/RecommendFragmant;

    invoke-static {v0}, Lcom/wsw/cospa/fragment/RecommendFragmant;->class(Lcom/wsw/cospa/fragment/RecommendFragmant;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant$for;->do:Lcom/wsw/cospa/fragment/RecommendFragmant;

    invoke-static {v0}, Lcom/wsw/cospa/fragment/RecommendFragmant;->class(Lcom/wsw/cospa/fragment/RecommendFragmant;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant$for;->do:Lcom/wsw/cospa/fragment/RecommendFragmant;

    invoke-static {v0}, Lcom/wsw/cospa/fragment/RecommendFragmant;->class(Lcom/wsw/cospa/fragment/RecommendFragmant;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-virtual {p1}, Lcom/wsw/cospa/fragment/FindColumnFragment;->volatile()V

    :cond_0
    return-void
.end method
