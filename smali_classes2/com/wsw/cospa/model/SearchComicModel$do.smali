.class Lcom/wsw/cospa/model/SearchComicModel$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/model/SearchComicModel;->strictfp(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/util/List<",
        "Lcom/wsw/cospa/bean/SearchComicBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:J

.field public final synthetic for:J

.field public final synthetic if:Lcom/wsw/cospa/model/SearchComicModel$for;

.field public final synthetic new:Ljava/lang/String;

.field public final synthetic try:Lcom/wsw/cospa/model/SearchComicModel;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/model/SearchComicModel;JLcom/wsw/cospa/model/SearchComicModel$for;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->try:Lcom/wsw/cospa/model/SearchComicModel;

    iput-wide p2, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->do:J

    iput-object p4, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->if:Lcom/wsw/cospa/model/SearchComicModel$for;

    iput-wide p5, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->for:J

    iput-object p7, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->new:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->do:J

    iget-object v2, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->try:Lcom/wsw/cospa/model/SearchComicModel;

    invoke-static {v2}, Lcom/wsw/cospa/model/SearchComicModel;->catch(Lcom/wsw/cospa/model/SearchComicModel;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->try:Lcom/wsw/cospa/model/SearchComicModel;

    invoke-static {v0}, Lcom/wsw/cospa/model/SearchComicModel;->class(Lcom/wsw/cospa/model/SearchComicModel;)I

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->try:Lcom/wsw/cospa/model/SearchComicModel;

    iget-object v1, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->if:Lcom/wsw/cospa/model/SearchComicModel$for;

    invoke-virtual {v1}, Lcom/wsw/cospa/model/SearchComicModel$for;->for()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/SearchComicBean;->getVariable()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/wsw/cospa/model/SearchComicModel;->const(Lcom/wsw/cospa/model/SearchComicModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getUrlNext()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->try:Lcom/wsw/cospa/model/SearchComicModel;

    invoke-static {v1}, Lcom/wsw/cospa/model/SearchComicModel;->final(Lcom/wsw/cospa/model/SearchComicModel;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->if:Lcom/wsw/cospa/model/SearchComicModel$for;

    invoke-virtual {v3}, Lcom/wsw/cospa/model/SearchComicModel$for;->for()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/SearchComicBean;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->for:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    div-int/lit16 v4, v4, 0x3e8

    .line 10
    invoke-virtual {v1, v4}, Lcom/wsw/cospa/bean/SearchComicBean;->setSearchTime(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->try:Lcom/wsw/cospa/model/SearchComicModel;

    invoke-static {v0}, Lcom/wsw/cospa/model/SearchComicModel;->super(Lcom/wsw/cospa/model/SearchComicModel;)Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;

    move-result-object v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-interface {v0, v1}, Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;->checkIsExist(Lcom/wsw/cospa/bean/SearchComicBean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->try:Lcom/wsw/cospa/model/SearchComicModel;

    invoke-static {v0}, Lcom/wsw/cospa/model/SearchComicModel;->super(Lcom/wsw/cospa/model/SearchComicModel;)Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;->loadMoreSearchBook(Ljava/util/List;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->if:Lcom/wsw/cospa/model/SearchComicModel$for;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/model/SearchComicModel$for;->new(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->if:Lcom/wsw/cospa/model/SearchComicModel$for;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/model/SearchComicModel$for;->new(Ljava/lang/Boolean;)V

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->try:Lcom/wsw/cospa/model/SearchComicModel;

    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->new:Ljava/lang/String;

    iget-wide v1, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->do:J

    invoke-static {p1, v0, v1, v2}, Lcom/wsw/cospa/model/SearchComicModel;->throw(Lcom/wsw/cospa/model/SearchComicModel;Ljava/lang/String;J)V

    :cond_4
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->try:Lcom/wsw/cospa/model/SearchComicModel;

    invoke-static {v0}, Lcom/wsw/cospa/model/SearchComicModel;->while(Lcom/wsw/cospa/model/SearchComicModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->if:Lcom/wsw/cospa/model/SearchComicModel$for;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/model/SearchComicModel$for;->new(Ljava/lang/Boolean;)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->try:Lcom/wsw/cospa/model/SearchComicModel;

    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->new:Ljava/lang/String;

    iget-wide v1, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->do:J

    invoke-static {p1, v0, v1, v2}, Lcom/wsw/cospa/model/SearchComicModel;->throw(Lcom/wsw/cospa/model/SearchComicModel;Ljava/lang/String;J)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/model/SearchComicModel$do;->do(Ljava/util/List;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel$do;->try:Lcom/wsw/cospa/model/SearchComicModel;

    invoke-static {v0}, Lcom/wsw/cospa/model/SearchComicModel;->break(Lcom/wsw/cospa/model/SearchComicModel;)Landroid/support/v4/cq;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
