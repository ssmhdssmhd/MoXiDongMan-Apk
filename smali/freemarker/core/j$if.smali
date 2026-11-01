.class Lfreemarker/core/j$if;
.super Lfreemarker/core/interface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private final:Lfreemarker/core/h0;

.field private super:Lfreemarker/core/h0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/interface;-><init>()V

    return-void
.end method


# virtual methods
.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->continue(Lfreemarker/core/d0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/j$if;->final:Lfreemarker/core/h0;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/j$if;->super:Lfreemarker/core/h0;

    :goto_0
    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->interface(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/util/List;Lfreemarker/core/m4;Lfreemarker/core/m4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfreemarker/core/h0;",
            ">;",
            "Lfreemarker/core/m4;",
            "Lfreemarker/core/m4;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfreemarker/core/h0;

    iput-object p2, p0, Lfreemarker/core/j$if;->final:Lfreemarker/core/h0;

    const/4 p2, 0x1

    .line 3
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/core/h0;

    iput-object p1, p0, Lfreemarker/core/j$if;->super:Lfreemarker/core/h0;

    return-void

    :cond_0
    const-string p1, "requires exactly 2"

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/interface;->y(Ljava/lang/String;Lfreemarker/core/m4;Lfreemarker/core/m4;)Lfreemarker/core/h3;

    move-result-object p1

    throw p1
.end method

.method public t(Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)V
    .locals 1

    .line 1
    check-cast p1, Lfreemarker/core/j$if;

    .line 2
    iget-object v0, p0, Lfreemarker/core/j$if;->final:Lfreemarker/core/h0;

    invoke-virtual {v0, p2, p3, p4}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object v0

    iput-object v0, p1, Lfreemarker/core/j$if;->final:Lfreemarker/core/h0;

    .line 3
    iget-object v0, p0, Lfreemarker/core/j$if;->super:Lfreemarker/core/h0;

    invoke-virtual {v0, p2, p3, p4}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object p2

    iput-object p2, p1, Lfreemarker/core/j$if;->super:Lfreemarker/core/h0;

    return-void
.end method

.method public u(I)Lfreemarker/core/h0;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/j$if;->super:Lfreemarker/core/h0;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Lfreemarker/core/j$if;->final:Lfreemarker/core/h0;

    return-object p1
.end method

.method public v()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfreemarker/core/h0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Lfreemarker/core/j$if;->final:Lfreemarker/core/h0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lfreemarker/core/j$if;->super:Lfreemarker/core/h0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public w()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
