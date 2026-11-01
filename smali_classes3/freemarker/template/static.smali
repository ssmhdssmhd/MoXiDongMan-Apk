.class public Lfreemarker/template/static;
.super Lfreemarker/core/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/static$if;,
        Lfreemarker/template/static$do;
    }
.end annotation


# static fields
.field public static final m1:Ljava/lang/String; = "D"

.field public static final n1:Ljava/lang/String; = "N"

.field private static final o1:I = 0x1000


# instance fields
.field private U0:Ljava/util/Map;

.field private V0:Ljava/util/List;

.field private W0:Lfreemarker/core/b4;

.field private X0:Ljava/lang/String;

.field private Y0:Ljava/lang/String;

.field private Z0:Ljava/lang/Object;

.field private a1:I

.field private b1:I

.field private c1:I

.field private d1:Z

.field private e1:Landroid/support/v4/e91;

.field private final f1:Ljava/lang/String;

.field private final g1:Ljava/lang/String;

.field private final h1:Ljava/util/ArrayList;

.field private final i1:Lfreemarker/core/ParserConfiguration;

.field private j1:Ljava/util/Map;

.field private k1:Ljava/util/Map;

.field private l1:Landroid/support/v4/we2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lfreemarker/core/b4;Lfreemarker/template/do;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0, p3, v0}, Lfreemarker/template/static;-><init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/template/do;Lfreemarker/core/ParserConfiguration;)V

    .line 43
    iput-object p2, p0, Lfreemarker/template/static;->W0:Lfreemarker/core/b4;

    .line 44
    invoke-static {p0}, Lfreemarker/debug/impl/if;->new(Lfreemarker/template/static;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/template/static;-><init>(Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/do;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/do;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0, p2, p3}, Lfreemarker/template/static;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/do;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/do;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 13
    invoke-direct/range {v0 .. v5}, Lfreemarker/template/static;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/do;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/template/do;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Lfreemarker/template/static;-><init>(Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/do;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/template/do;Lfreemarker/core/ParserConfiguration;)V
    .locals 1

    .line 1
    invoke-static {p3}, Lfreemarker/template/static;->A1(Lfreemarker/template/do;)Lfreemarker/template/do;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/t;-><init>(Lfreemarker/core/t;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/template/static;->U0:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lfreemarker/template/static;->V0:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/template/static;->h1:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/template/static;->j1:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/template/static;->k1:Ljava/util/Map;

    .line 7
    iput-object p1, p0, Lfreemarker/template/static;->f1:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lfreemarker/template/static;->g1:Ljava/lang/String;

    .line 9
    invoke-static {p3}, Lfreemarker/template/static;->A1(Lfreemarker/template/do;)Lfreemarker/template/do;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/template/static;->s1(Landroid/support/v4/we2;)Landroid/support/v4/we2;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/static;->l1:Landroid/support/v4/we2;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lfreemarker/template/static;->b1()Lfreemarker/template/do;

    move-result-object p4

    :goto_0
    iput-object p4, p0, Lfreemarker/template/static;->i1:Lfreemarker/core/ParserConfiguration;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/do;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 14
    invoke-direct/range {v0 .. v5}, Lfreemarker/template/static;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/do;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/do;Lfreemarker/core/ParserConfiguration;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2, p4, p5}, Lfreemarker/template/static;-><init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/template/do;Lfreemarker/core/ParserConfiguration;)V

    .line 17
    invoke-virtual {p0, p6}, Lfreemarker/template/static;->y1(Ljava/lang/String;)V

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lfreemarker/template/static;->j1()Lfreemarker/core/ParserConfiguration;

    move-result-object p1

    .line 19
    instance-of p2, p3, Ljava/io/BufferedReader;

    if-nez p2, :cond_0

    instance-of p2, p3, Ljava/io/StringReader;

    if-nez p2, :cond_0

    .line 20
    new-instance p2, Ljava/io/BufferedReader;

    const/16 p5, 0x1000

    invoke-direct {p2, p3, p5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object p3, p2

    .line 21
    :cond_0
    new-instance p2, Lfreemarker/template/static$do;

    invoke-direct {p2, p0, p3, p1}, Lfreemarker/template/static$do;-><init>(Lfreemarker/template/static;Ljava/io/Reader;Lfreemarker/core/ParserConfiguration;)V
    :try_end_0
    .catch Lfreemarker/core/h3; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    new-instance p3, Lfreemarker/core/j0;

    invoke-direct {p3, p0, p2, p1}, Lfreemarker/core/j0;-><init>(Lfreemarker/template/static;Ljava/io/Reader;Lfreemarker/core/ParserConfiguration;)V

    if-eqz p4, :cond_1

    .line 23
    invoke-virtual {p4}, Lfreemarker/template/do;->F1()Z

    move-result p4

    invoke-static {p3, p4}, Lfreemarker/core/y4;->super(Lfreemarker/core/j0;Z)V
    :try_end_1
    .catch Landroid/support/v4/w72; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lfreemarker/core/h3; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :cond_1
    :try_start_2
    invoke-virtual {p3}, Lfreemarker/core/j0;->H()Lfreemarker/core/b4;

    move-result-object p4

    iput-object p4, p0, Lfreemarker/template/static;->W0:Lfreemarker/core/b4;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/support/v4/w72; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lfreemarker/core/h3; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 25
    :try_start_3
    invoke-virtual {p2}, Lfreemarker/template/static$do;->if()Z

    move-result p5

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 26
    iput-object p4, p0, Lfreemarker/template/static;->W0:Lfreemarker/core/b4;

    .line 27
    :goto_0
    invoke-virtual {p3}, Lfreemarker/core/j0;->Z()I

    move-result p4

    iput p4, p0, Lfreemarker/template/static;->b1:I

    .line 28
    invoke-interface {p1}, Lfreemarker/core/ParserConfiguration;->getInterpolationSyntax()I

    move-result p1

    iput p1, p0, Lfreemarker/template/static;->a1:I

    .line 29
    invoke-virtual {p3}, Lfreemarker/core/j0;->Y()I

    move-result p1

    iput p1, p0, Lfreemarker/template/static;->c1:I
    :try_end_3
    .catch Landroid/support/v4/w72; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lfreemarker/core/h3; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    invoke-virtual {p2}, Ljava/io/Reader;->close()V

    .line 31
    invoke-virtual {p2}, Lfreemarker/template/static$do;->new()V

    .line 32
    invoke-static {p0}, Lfreemarker/debug/impl/if;->new(Lfreemarker/template/static;)V

    .line 33
    iget-object p1, p0, Lfreemarker/template/static;->k1:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/static;->k1:Ljava/util/Map;

    .line 34
    iget-object p1, p0, Lfreemarker/template/static;->j1:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/static;->j1:Ljava/util/Map;

    return-void

    .line 35
    :cond_2
    :try_start_4
    throw p4
    :try_end_4
    .catch Landroid/support/v4/w72; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lfreemarker/core/h3; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    move-object p3, p2

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p3, p2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 36
    :try_start_5
    invoke-virtual {p1, p0}, Landroid/support/v4/w72;->toParseException(Lfreemarker/template/static;)Lfreemarker/core/h3;

    move-result-object p1

    throw p1
    :try_end_5
    .catch Lfreemarker/core/h3; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    .line 37
    :goto_1
    :try_start_6
    invoke-virtual {p0}, Lfreemarker/template/static;->q1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lfreemarker/core/h3;->setTemplateName(Ljava/lang/String;)V

    .line 38
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 39
    :goto_2
    invoke-virtual {p3}, Ljava/io/Reader;->close()V

    .line 40
    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/do;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 15
    invoke-direct/range {v0 .. v6}, Lfreemarker/template/static;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/do;Lfreemarker/core/ParserConfiguration;Ljava/lang/String;)V

    return-void
.end method

.method private static A1(Lfreemarker/template/do;)Lfreemarker/template/do;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lfreemarker/template/do;->f1()Lfreemarker/template/do;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic P0(Lfreemarker/template/static;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/template/static;->h1:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static k1(Ljava/lang/String;Ljava/lang/String;Lfreemarker/template/do;)Lfreemarker/template/static;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1, p2}, Lfreemarker/template/static;->l1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfreemarker/template/do;)Lfreemarker/template/static;

    move-result-object p0

    return-object p0
.end method

.method public static l1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfreemarker/template/do;)Lfreemarker/template/static;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lfreemarker/template/static;

    new-instance v1, Ljava/io/StringReader;

    const-string v2, "X"

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, p1, v1, p3}, Lfreemarker/template/static;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/do;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object p0, v0, Lfreemarker/template/static;->W0:Lfreemarker/core/b4;

    check-cast p0, Lfreemarker/core/k4;

    invoke-static {p0, p2}, Lfreemarker/core/y4;->final(Lfreemarker/core/k4;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lfreemarker/debug/impl/if;->new(Lfreemarker/template/static;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Landroid/support/v4/mc;

    const-string p2, "Plain text template creation failed"

    invoke-direct {p1, p2, p0}, Landroid/support/v4/mc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static s1(Landroid/support/v4/we2;)Landroid/support/v4/we2;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/support/v4/ul2;->if(Landroid/support/v4/we2;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/we2;->intValue()I

    move-result v0

    .line 3
    sget v1, Landroid/support/v4/ul2;->if:I

    if-ge v0, v1, :cond_0

    .line 4
    sget-object p0, Lfreemarker/template/do;->h3:Landroid/support/v4/we2;

    return-object p0

    .line 5
    :cond_0
    sget v1, Landroid/support/v4/ul2;->new:I

    if-le v0, v1, :cond_1

    .line 6
    sget-object p0, Lfreemarker/template/do;->k3:Landroid/support/v4/we2;

    :cond_1
    return-object p0
.end method


# virtual methods
.method public Q0(Lfreemarker/core/r1;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/static;->V0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public R0(Lfreemarker/core/x1;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/static;->U0:Ljava/util/Map;

    invoke-virtual {p1}, Lfreemarker/core/x1;->x()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public S0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "N"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lfreemarker/template/static;->j1:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lfreemarker/template/static;->k1:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "D"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iput-object p2, p0, Lfreemarker/template/static;->Y0:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lfreemarker/template/static;->j1:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lfreemarker/template/static;->k1:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The namespace URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be mapped to 2 different prefixes."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The prefix: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' was repeated. This is illegal."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 12
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The prefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be registered, it\'s reserved for special internal use."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot map empty string prefix"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot map empty string URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public T0(II)Ljavax/swing/tree/TreePath;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lfreemarker/template/static;->W0:Lfreemarker/core/b4;

    .line 3
    :goto_0
    invoke-virtual {v1, p1, p2}, Lfreemarker/core/h4;->do(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v1}, Lfreemarker/core/b4;->static()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/b4;

    .line 7
    invoke-virtual {v2, p1, p2}, Lfreemarker/core/h4;->do(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_2
    new-instance p1, Ljavax/swing/tree/TreePath;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/swing/tree/TreePath;-><init>([Ljava/lang/Object;)V

    return-object p1
.end method

.method public U0(Ljava/lang/Object;Ljava/io/Writer;)Lfreemarker/core/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lfreemarker/template/static;->V0(Ljava/lang/Object;Ljava/io/Writer;Lfreemarker/template/ObjectWrapper;)Lfreemarker/core/d0;

    move-result-object p1

    return-object p1
.end method

.method public V0(Ljava/lang/Object;Ljava/io/Writer;Lfreemarker/template/ObjectWrapper;)Lfreemarker/core/d0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfreemarker/template/TemplateHashModel;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lfreemarker/template/TemplateHashModel;

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/t;->implements()Lfreemarker/template/ObjectWrapper;

    move-result-object p3

    :cond_1
    if-nez p1, :cond_2

    .line 4
    new-instance p1, Lfreemarker/template/native;

    invoke-direct {p1, p3}, Lfreemarker/template/native;-><init>(Lfreemarker/template/ObjectWrapper;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {p3, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lfreemarker/template/TemplateHashModel;

    if-eqz v1, :cond_3

    .line 7
    move-object p1, v0

    check-cast p1, Lfreemarker/template/TemplateHashModel;

    .line 8
    :goto_0
    new-instance p3, Lfreemarker/core/d0;

    invoke-direct {p3, p0, p1, p2}, Lfreemarker/core/d0;-><init>(Lfreemarker/template/static;Lfreemarker/template/TemplateHashModel;Ljava/io/Writer;)V

    return-object p3

    :cond_3
    if-nez v0, :cond_4

    .line 9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " converted "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to null."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " didn\'t convert "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to a TemplateHashModel. Generally, you want to use a Map<String, Object> or a JavaBean as the root-map (aka. data-model) parameter. The Map key-s or JavaBean property names will be the variable names in the template."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public W0(Ljava/io/PrintStream;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/static;->W0:Lfreemarker/core/b4;

    invoke-virtual {v0}, Lfreemarker/core/b4;->for()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public X0(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/static;->W0:Lfreemarker/core/b4;

    invoke-virtual {v0}, Lfreemarker/core/b4;->for()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public Y0()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/template/static;->c1:I

    return v0
.end method

.method public Z0()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/template/static;->b1:I

    return v0
.end method

.method public a1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/static;->d1:Z

    return v0
.end method

.method public b1()Lfreemarker/template/do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/t;->synchronized()Lfreemarker/core/t;

    move-result-object v0

    check-cast v0, Lfreemarker/template/do;

    return-object v0
.end method

.method public c1()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/static;->Z0:Ljava/lang/Object;

    return-object v0
.end method

.method public d1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/static;->Y0:Ljava/lang/String;

    return-object v0
.end method

.method public e1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/static;->X0:Ljava/lang/String;

    return-object v0
.end method

.method public f1()Ljava/util/List;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/static;->V0:Ljava/util/List;

    return-object v0
.end method

.method public g1()Ljava/util/Map;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/static;->U0:Ljava/util/Map;

    return-object v0
.end method

.method public getInterpolationSyntax()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/template/static;->a1:I

    return v0
.end method

.method public getOutputFormat()Landroid/support/v4/e91;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/static;->e1:Landroid/support/v4/e91;

    return-object v0
.end method

.method public h1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/static;->f1:Ljava/lang/String;

    return-object v0
.end method

.method public i1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-object p1, p0, Lfreemarker/template/static;->Y0:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Lfreemarker/template/static;->j1:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public j1()Lfreemarker/core/ParserConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/static;->i1:Lfreemarker/core/ParserConfiguration;

    return-object v0
.end method

.method public m1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_2

    .line 2
    iget-object p1, p0, Lfreemarker/template/static;->Y0:Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "N"

    :goto_0
    return-object v1

    .line 3
    :cond_2
    iget-object v0, p0, Lfreemarker/template/static;->Y0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    .line 4
    :cond_3
    iget-object v0, p0, Lfreemarker/template/static;->k1:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public n1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_3

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/template/static;->Y0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p0, p2}, Lfreemarker/template/static;->m1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_3
    :goto_0
    iget-object p2, p0, Lfreemarker/template/static;->Y0:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "N:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public o1()Lfreemarker/core/b4;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/static;->W0:Lfreemarker/core/b4;

    return-object v0
.end method

.method public p1(IIII)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    if-ge p4, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p4, p4, -0x1

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-gt p2, p4, :cond_2

    .line 2
    iget-object v2, p0, Lfreemarker/template/static;->h1:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 3
    iget-object v2, p0, Lfreemarker/template/static;->h1:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iget-object p2, p0, Lfreemarker/template/static;->h1:Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, p3

    sub-int/2addr p2, v0

    const/4 p3, 0x0

    .line 5
    invoke-virtual {v1, p3, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public q1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/static;->g1:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lfreemarker/template/static;->h1()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public r1()Landroid/support/v4/we2;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/static;->l1:Landroid/support/v4/we2;

    return-object v0
.end method

.method public t1(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lfreemarker/template/static;->V0(Ljava/lang/Object;Ljava/io/Writer;Lfreemarker/template/ObjectWrapper;)Lfreemarker/core/d0;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/core/d0;->d3()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lfreemarker/template/static;->X0(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public u1(Ljava/lang/Object;Ljava/io/Writer;Lfreemarker/template/ObjectWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/template/static;->V0(Ljava/lang/Object;Ljava/io/Writer;Lfreemarker/template/ObjectWrapper;)Lfreemarker/core/d0;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/core/d0;->d3()V

    return-void
.end method

.method public v1(Ljava/lang/Object;Ljava/io/Writer;Lfreemarker/template/ObjectWrapper;Lfreemarker/template/TemplateNodeModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/template/static;->V0(Ljava/lang/Object;Ljava/io/Writer;Lfreemarker/template/ObjectWrapper;)Lfreemarker/core/d0;

    move-result-object p1

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p1, p4}, Lfreemarker/core/d0;->m3(Lfreemarker/template/TemplateNodeModel;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lfreemarker/core/d0;->d3()V

    return-void
.end method

.method public w1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/template/static;->d1:Z

    return-void
.end method

.method public x1(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/template/static;->Z0:Ljava/lang/Object;

    return-void
.end method

.method public y1(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lfreemarker/template/static;->X0:Ljava/lang/String;

    return-void
.end method

.method public z1(Landroid/support/v4/e91;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/template/static;->e1:Landroid/support/v4/e91;

    return-void
.end method
