.class public Lfreemarker/core/y4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final do:Ljava/lang/String; = "----"

.field public static final for:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final if:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final new:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 2
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 3
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    const-string v3, "assign"

    .line 4
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "attempt"

    .line 5
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "autoesc"

    const-string v4, "autoEsc"

    .line 6
    invoke-static {v0, v1, v2, v3, v4}, Lfreemarker/core/y4;->if(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "break"

    .line 7
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "call"

    .line 8
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "case"

    .line 9
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "comment"

    .line 10
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "compress"

    .line 11
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "continue"

    .line 12
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "default"

    .line 13
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "else"

    .line 14
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "elseif"

    const-string v4, "elseIf"

    .line 15
    invoke-static {v0, v1, v2, v3, v4}, Lfreemarker/core/y4;->if(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "escape"

    .line 16
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "fallback"

    .line 17
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "flush"

    .line 18
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "foreach"

    const-string v4, "forEach"

    .line 19
    invoke-static {v0, v1, v2, v3, v4}, Lfreemarker/core/y4;->if(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ftl"

    .line 20
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "function"

    .line 21
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "global"

    .line 22
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "if"

    .line 23
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "import"

    .line 24
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "include"

    .line 25
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "items"

    .line 26
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "list"

    .line 27
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "local"

    .line 28
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "lt"

    .line 29
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "macro"

    .line 30
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "nested"

    .line 31
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "noautoesc"

    const-string v4, "noAutoEsc"

    .line 32
    invoke-static {v0, v1, v2, v3, v4}, Lfreemarker/core/y4;->if(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "noescape"

    const-string v4, "noEscape"

    .line 33
    invoke-static {v0, v1, v2, v3, v4}, Lfreemarker/core/y4;->if(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "noparse"

    const-string v4, "noParse"

    .line 34
    invoke-static {v0, v1, v2, v3, v4}, Lfreemarker/core/y4;->if(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "nt"

    .line 35
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "outputformat"

    const-string v4, "outputFormat"

    .line 36
    invoke-static {v0, v1, v2, v3, v4}, Lfreemarker/core/y4;->if(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "recover"

    .line 37
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "recurse"

    .line 38
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "return"

    .line 39
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "rt"

    .line 40
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "sep"

    .line 41
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "setting"

    .line 42
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "stop"

    .line 43
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "switch"

    .line 44
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "t"

    .line 45
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "transform"

    .line 46
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    const-string v3, "visit"

    .line 47
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/y4;->do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 48
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lfreemarker/core/y4;->if:Ljava/util/Set;

    .line 49
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lfreemarker/core/y4;->for:Ljava/util/Set;

    .line 50
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lfreemarker/core/y4;->new:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(Lfreemarker/core/b4;)Lfreemarker/core/b4;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/b4;->synchronized()Lfreemarker/core/b4;

    move-result-object p0

    return-object p0
.end method

.method public static case(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must be instances of "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p1}, Lfreemarker/template/utility/if;->break(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", but one of them was a(n) "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {v0}, Lfreemarker/template/utility/if;->class(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    return-void
.end method

.method public static catch(I)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lfreemarker/core/return;->const:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    if-ne p0, v0, :cond_1

    .line 2
    sget-object p0, Lfreemarker/core/return;->catch:Ljava/util/Set;

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    if-ne p0, v0, :cond_2

    .line 3
    sget-object p0, Lfreemarker/core/return;->break:Ljava/util/Set;

    .line 4
    :goto_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported naming convention constant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static class(Lfreemarker/template/TemplateCollectionModel;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lfreemarker/core/i1;

    if-eqz v0, :cond_0

    check-cast p0, Lfreemarker/core/i1;

    invoke-virtual {p0}, Lfreemarker/core/i1;->if()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static const([Lfreemarker/core/b4;ZLjava/io/Writer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lfreemarker/core/d0;->b3([Lfreemarker/core/b4;ZLjava/io/Writer;)V

    return-void
.end method

.method private static do(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static else(Ljava/lang/String;Lfreemarker/template/TemplateException;)Landroid/support/v4/k52;
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/support/v4/k52;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/support/v4/k52;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/vl2;

    .line 4
    invoke-static {p1}, Landroid/support/v4/ul2;->try(Lfreemarker/template/TemplateException;)Lfreemarker/core/h0;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p1}, Lfreemarker/template/TemplateException;->getEnvironment()Lfreemarker/core/d0;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1, p0}, Landroid/support/v4/vl2;-><init>(Lfreemarker/core/h0;Ljava/lang/Throwable;Lfreemarker/core/d0;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final final(Lfreemarker/core/k4;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/k4;->z(Ljava/lang/String;)V

    return-void
.end method

.method public static final for(Lfreemarker/template/static;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lfreemarker/core/l4;

    invoke-direct {v0}, Lfreemarker/core/l4;-><init>()V

    invoke-virtual {v0, p0}, Lfreemarker/core/l4;->do(Lfreemarker/template/static;)V
    :try_end_0
    .catch Lfreemarker/core/j4; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Template post-processing failed"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static goto(Lfreemarker/core/b4;I)Lfreemarker/core/b4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/b4;->default(I)Lfreemarker/core/b4;

    move-result-object p0

    return-object p0
.end method

.method private static if(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-interface {p0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {p2, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static new(Lfreemarker/core/b4;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lfreemarker/core/d0;->Z0(Lfreemarker/core/b4;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static super(Lfreemarker/core/j0;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/j0;->e3(Z)V

    return-void
.end method

.method public static this(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/d0;->O1()[Lfreemarker/core/b4;

    move-result-object p0

    return-object p0
.end method

.method public static final try(Lfreemarker/template/TemplateDirectiveBody;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/d2;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lfreemarker/core/d2;->check(Lfreemarker/template/TemplateDirectiveBody;)V

    return-void
.end method
