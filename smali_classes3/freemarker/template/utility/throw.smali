.class public final Lfreemarker/template/utility/throw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/utility/throw$for;,
        Lfreemarker/template/utility/throw$new;,
        Lfreemarker/template/utility/throw$if;,
        Lfreemarker/template/utility/throw$try;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final do(Lfreemarker/template/TemplateHashModelEx;)Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lfreemarker/template/TemplateHashModelEx2;

    if-eqz v0, :cond_0

    check-cast p0, Lfreemarker/template/TemplateHashModelEx2;

    invoke-interface {p0}, Lfreemarker/template/TemplateHashModelEx2;->keyValuePairIterator()Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lfreemarker/template/utility/throw$try;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfreemarker/template/utility/throw$try;-><init>(Lfreemarker/template/TemplateHashModelEx;Lfreemarker/template/utility/throw$do;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static varargs for(Lfreemarker/template/ObjectWrapper;[Ljava/lang/Object;)Lfreemarker/template/TemplateHashModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lfreemarker/template/utility/throw;->if(Lfreemarker/template/ObjectWrapper;Ljava/util/List;)Lfreemarker/template/TemplateHashModel;

    move-result-object p0

    return-object p0
.end method

.method public static if(Lfreemarker/template/ObjectWrapper;Ljava/util/List;)Lfreemarker/template/TemplateHashModel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/template/ObjectWrapper;",
            "Ljava/util/List<",
            "*>;)",
            "Lfreemarker/template/TemplateHashModel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const-string v0, "hashLikeObjects"

    .line 1
    invoke-static {v0, p1}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    instance-of v5, v3, Lfreemarker/template/TemplateModel;

    if-eqz v5, :cond_1

    .line 5
    check-cast v3, Lfreemarker/template/TemplateModel;

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {p0, v3}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    .line 7
    :goto_1
    instance-of v5, v3, Lfreemarker/template/TemplateHashModelEx;

    if-nez v5, :cond_3

    .line 8
    instance-of v2, v3, Lfreemarker/template/TemplateHashModel;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    .line 9
    :cond_2
    new-instance p0, Landroid/support/v4/k52;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "One of the objects of the hash union is not hash-like: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {v3}, Lfreemarker/template/utility/if;->case(Lfreemarker/template/TemplateModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_3
    :goto_2
    check-cast v3, Lfreemarker/template/TemplateHashModel;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lfreemarker/template/utility/for;->break:Lfreemarker/template/TemplateHashModelEx;

    goto :goto_3

    .line 13
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v1, :cond_6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfreemarker/template/TemplateHashModel;

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    new-instance p0, Lfreemarker/template/utility/throw$for;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lfreemarker/template/utility/throw$for;-><init>(Ljava/util/List;Lfreemarker/template/utility/throw$do;)V

    goto :goto_3

    :cond_7
    new-instance p0, Lfreemarker/template/utility/throw$new;

    invoke-direct {p0, v0}, Lfreemarker/template/utility/throw$new;-><init>(Ljava/util/List;)V

    :goto_3
    return-object p0
.end method
