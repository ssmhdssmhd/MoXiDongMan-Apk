.class Lfreemarker/core/super$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/core/LocalContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/super;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field public do:Lfreemarker/core/x1$do;

.field public final synthetic for:Lfreemarker/core/super;

.field public if:Lfreemarker/core/d0$this;


# direct methods
.method public constructor <init>(Lfreemarker/core/super;Lfreemarker/core/d0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lfreemarker/core/super$do;->for:Lfreemarker/core/super;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p2}, Lfreemarker/core/d0;->x1()Lfreemarker/core/x1$do;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/super$do;->do:Lfreemarker/core/x1$do;

    .line 3
    iget-object v0, v0, Lfreemarker/core/x1$do;->new:Ljava/util/List;

    .line 4
    invoke-static {p1}, Lfreemarker/core/super;->r(Lfreemarker/core/super;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-static {p1}, Lfreemarker/core/super;->r(Lfreemarker/core/super;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 6
    invoke-static {p1}, Lfreemarker/core/super;->r(Lfreemarker/core/super;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/h0;

    .line 7
    invoke-virtual {v2, p2}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10
    iget-object v4, p0, Lfreemarker/core/super$do;->if:Lfreemarker/core/d0$this;

    if-nez v4, :cond_0

    .line 11
    new-instance v4, Lfreemarker/core/d0$this;

    invoke-direct {v4, p2}, Lfreemarker/core/d0$this;-><init>(Lfreemarker/core/d0;)V

    iput-object v4, p0, Lfreemarker/core/super$do;->if:Lfreemarker/core/d0$this;

    .line 12
    :cond_0
    iget-object v4, p0, Lfreemarker/core/super$do;->if:Lfreemarker/core/d0$this;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object v2

    invoke-virtual {v2}, Lfreemarker/template/static;->b1()Lfreemarker/template/do;

    move-result-object v2

    invoke-virtual {v2}, Lfreemarker/template/do;->y1()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    sget-object v2, Lfreemarker/core/y2;->do:Lfreemarker/core/y2;

    .line 14
    :goto_1
    invoke-virtual {v4, v3, v2}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public getLocalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/super$do;->if:Lfreemarker/core/d0$this;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lfreemarker/template/native;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getLocalVariableNames()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/super$do;->do:Lfreemarker/core/x1$do;

    iget-object v0, v0, Lfreemarker/core/x1$do;->new:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object v0
.end method
