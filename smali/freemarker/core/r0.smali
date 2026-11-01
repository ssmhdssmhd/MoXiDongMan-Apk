.class final Lfreemarker/core/r0;
.super Lfreemarker/core/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/r0$do;
    }
.end annotation


# instance fields
.field private final break:I

.field private final goto:Ljava/util/ArrayList;

.field private final this:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/h0;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/r0;->goto:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lfreemarker/core/r0;->this:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lfreemarker/core/r0;->break:I

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->trimToSize()V

    .line 6
    invoke-virtual {p2}, Ljava/util/ArrayList;->trimToSize()V

    return-void
.end method

.method public static synthetic d(Lfreemarker/core/r0;)I
    .locals 0

    .line 1
    iget p0, p0, Lfreemarker/core/r0;->break:I

    return p0
.end method

.method public static synthetic e(Lfreemarker/core/r0;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/r0;->goto:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic f(Lfreemarker/core/r0;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/r0;->this:Ljava/util/ArrayList;

    return-object p0
.end method

.method private g(I)V
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/r0;->break:I

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "{...}"

    return-object v0
.end method

.method public else()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/r0;->break:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lfreemarker/core/r0;->break:I

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lfreemarker/core/r0;->goto:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/h0;

    .line 4
    iget-object v3, p0, Lfreemarker/core/r0;->this:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/h0;

    .line 5
    invoke-virtual {v2}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v3}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget v2, p0, Lfreemarker/core/r0;->break:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "}"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/r0;->g(I)V

    .line 2
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    sget-object p1, Lfreemarker/core/f3;->else:Lfreemarker/core/f3;

    goto :goto_0

    :cond_0
    sget-object p1, Lfreemarker/core/f3;->case:Lfreemarker/core/f3;

    :goto_0
    return-object p1
.end method

.method public instanceof()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lfreemarker/core/h0;->else:Lfreemarker/template/TemplateModel;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p0, Lfreemarker/core/r0;->break:I

    if-ge v2, v3, :cond_3

    .line 3
    iget-object v3, p0, Lfreemarker/core/r0;->goto:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/h0;

    .line 4
    iget-object v4, p0, Lfreemarker/core/r0;->this:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/core/h0;

    .line 5
    invoke-virtual {v3}, Lfreemarker/core/h0;->instanceof()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v4}, Lfreemarker/core/h0;->instanceof()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    return v1
.end method

.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/r0$do;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/r0$do;-><init>(Lfreemarker/core/r0;Lfreemarker/core/d0;)V

    return-object v0
.end method

.method public static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/core/r0;->goto:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/h0;

    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lfreemarker/core/r0;->this:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/h0;

    invoke-virtual {v3, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Lfreemarker/core/r0;

    invoke-direct {p1, v0, v1}, Lfreemarker/core/r0;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/r0;->g(I)V

    .line 2
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/r0;->goto:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/r0;->this:Ljava/util/ArrayList;

    :goto_0
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
