.class Lcom/wsw/cospa/activity/SourceFilterView$if;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/SourceFilterView;->static()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Ljava/util/List<",
        "Lcom/wsw/cospa/bean/ComicSourceBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/SourceFilterView;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/SourceFilterView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView$if;->do:Lcom/wsw/cospa/activity/SourceFilterView;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/bz1;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView$if;->do:Lcom/wsw/cospa/activity/SourceFilterView;

    invoke-virtual {v0}, Lcom/wsw/cospa/activity/SourceFilterView;->const()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onError(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView$if;->do:Lcom/wsw/cospa/activity/SourceFilterView;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/SourceFilterView;->const()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/SourceFilterView$if;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView$if;->do:Lcom/wsw/cospa/activity/SourceFilterView;

    invoke-virtual {v0}, Lcom/wsw/cospa/activity/SourceFilterView;->const()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView$if;->do:Lcom/wsw/cospa/activity/SourceFilterView;

    invoke-static {v0}, Lcom/wsw/cospa/activity/SourceFilterView;->else(Lcom/wsw/cospa/activity/SourceFilterView;)Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;->refresh(Ljava/util/List;)V

    .line 4
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/DatabaseHelper;->class()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView$if;->do:Lcom/wsw/cospa/activity/SourceFilterView;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/SourceFilterView;->final()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView$if;->do:Lcom/wsw/cospa/activity/SourceFilterView;

    const-string v0, "\u6682\u65e0\u56fe\u6e90\uff01\u8bf7\u5728\u56fe\u6e90\u7ba1\u7406\u4e2d\u52fe\u9009\u6709\u53d1\u73b0\u7684\u56fe\u6e90"

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/activity/SourceFilterView;->extends(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView$if;->do:Lcom/wsw/cospa/activity/SourceFilterView;

    const-string v0, "\u6682\u65e0\u56fe\u6e90\uff0c\u8bf7\u5173\u6ce8\u5f02\u6b21\u5143\u5fae\u4fe1\u516c\u4f17\u53f7\uff1a\u641c\u7d22\u3010\u5f02\u6b21\u5143APP\u8f6f\u4ef6\u3011\u6216\u8005\u626b\u63cf\u5173\u4e8e\u754c\u9762\u4e2d\u7684\u4e8c\u7ef4\u7801\u83b7\u53d6\u56fe\u6e90"

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/activity/SourceFilterView;->extends(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
