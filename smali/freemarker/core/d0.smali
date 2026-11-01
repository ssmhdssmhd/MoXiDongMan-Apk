.class public final Lfreemarker/core/d0;
.super Lfreemarker/core/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/d0$else;,
        Lfreemarker/core/d0$case;,
        Lfreemarker/core/d0$this;,
        Lfreemarker/core/d0$break;,
        Lfreemarker/core/d0$goto;
    }
.end annotation


# static fields
.field private static final D1:Ljava/lang/ThreadLocal;

.field private static final E1:Lfreemarker/log/if;

.field private static final F1:Lfreemarker/log/if;

.field private static final G1:Ljava/text/DecimalFormat;

.field private static final H1:I = 0x4

.field private static final I1:I = 0x8

.field private static final J1:I = 0x10

.field private static final K1:[Lfreemarker/template/TemplateModel;

.field private static final L1:I = 0xa

.field private static final M1:Ljava/io/Writer;


# instance fields
.field private A1:Z

.field private B1:Z

.field private C1:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final U0:Lfreemarker/template/do;

.field private final V0:Z

.field private final W0:Lfreemarker/template/TemplateHashModel;

.field private X0:[Lfreemarker/core/b4;

.field private Y0:I

.field private final Z0:Ljava/util/ArrayList;

.field private a1:Lfreemarker/core/f4;

.field private b1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lfreemarker/core/f4;",
            ">;"
        }
    .end annotation
.end field

.field private c1:[Lfreemarker/core/z3;

.field private d1:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lfreemarker/core/z3;",
            ">;"
        }
    .end annotation
.end field

.field private e1:Ljava/lang/Boolean;

.field private f1:Ljava/text/NumberFormat;

.field private g1:Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;

.field private h1:Ljava/text/Collator;

.field private i1:Ljava/io/Writer;

.field private j1:Lfreemarker/core/x1$do;

.field private k1:Lfreemarker/core/v1;

.field private final l1:Lfreemarker/core/d0$this;

.field private m1:Lfreemarker/core/d0$this;

.field private n1:Lfreemarker/core/d0$this;

.field private o1:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lfreemarker/core/d0$this;",
            ">;"
        }
    .end annotation
.end field

.field private p1:Lfreemarker/core/t;

.field private q1:Z

.field private r1:Ljava/lang/Throwable;

.field private s1:Lfreemarker/template/TemplateModel;

.field private t1:Ljava/util/HashMap;

.field private u1:Lfreemarker/template/TemplateNodeModel;

.field private v1:Lfreemarker/template/TemplateSequenceModel;

.field private w1:I

.field private x1:Ljava/lang/String;

.field private y1:Ljava/lang/String;

.field private z1:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lfreemarker/core/d0;->D1:Ljava/lang/ThreadLocal;

    const-string v0, "freemarker.runtime"

    .line 2
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/core/d0;->E1:Lfreemarker/log/if;

    const-string v0, "freemarker.runtime.attempt"

    .line 3
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/core/d0;->F1:Lfreemarker/log/if;

    .line 4
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v2, "0.################"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lfreemarker/core/d0;->G1:Ljava/text/DecimalFormat;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 6
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    new-array v0, v1, [Lfreemarker/template/TemplateModel;

    .line 7
    sput-object v0, Lfreemarker/core/d0;->K1:[Lfreemarker/template/TemplateModel;

    .line 8
    new-instance v0, Lfreemarker/core/d0$try;

    invoke-direct {v0}, Lfreemarker/core/d0$try;-><init>()V

    sput-object v0, Lfreemarker/core/d0;->M1:Ljava/io/Writer;

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/static;Lfreemarker/template/TemplateHashModel;Ljava/io/Writer;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/t;-><init>(Lfreemarker/core/t;)V

    const/16 v0, 0x10

    new-array v0, v0, [Lfreemarker/core/b4;

    .line 2
    iput-object v0, p0, Lfreemarker/core/d0;->X0:[Lfreemarker/core/b4;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lfreemarker/core/d0;->Y0:I

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfreemarker/core/d0;->Z0:Ljava/util/ArrayList;

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lfreemarker/core/d0;->t1:Ljava/util/HashMap;

    .line 6
    invoke-virtual {p1}, Lfreemarker/template/static;->b1()Lfreemarker/template/do;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/core/d0;->U0:Lfreemarker/template/do;

    .line 7
    invoke-virtual {v1}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/we2;->intValue()I

    move-result v1

    sget v2, Landroid/support/v4/ul2;->catch:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lfreemarker/core/d0;->V0:Z

    .line 8
    new-instance v0, Lfreemarker/core/d0$this;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfreemarker/core/d0$this;-><init>(Lfreemarker/core/d0;Lfreemarker/template/static;)V

    iput-object v0, p0, Lfreemarker/core/d0;->n1:Lfreemarker/core/d0$this;

    .line 9
    new-instance v0, Lfreemarker/core/d0$this;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/d0$this;-><init>(Lfreemarker/core/d0;Lfreemarker/template/static;)V

    iput-object v0, p0, Lfreemarker/core/d0;->l1:Lfreemarker/core/d0$this;

    iput-object v0, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    .line 10
    iput-object p3, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    .line 11
    iput-object p2, p0, Lfreemarker/core/d0;->W0:Lfreemarker/template/TemplateHashModel;

    .line 12
    invoke-virtual {p0, p1}, Lfreemarker/core/d0;->J2(Lfreemarker/template/static;)V

    return-void
.end method

.method private A2(Ljava/lang/String;Z)Lfreemarker/core/f4;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->b1:Ljava/util/Map;

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/core/d0;->b1:Ljava/util/Map;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/f4;

    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lfreemarker/core/d0;->B2(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/core/f4;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 5
    iget-object p2, p0, Lfreemarker/core/d0;->b1:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private B2(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/core/f4;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_5

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/d0;->U2()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/t;->m()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_2
    :goto_1
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-ge v2, v0, :cond_3

    add-int/2addr v2, v1

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    const-string p1, ""

    .line 8
    :goto_2
    invoke-virtual {p0, v3}, Lfreemarker/core/t;->switch(Ljava/lang/String;)Lfreemarker/core/g4;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0, p1, p2, p0}, Lfreemarker/core/g4;->do(Ljava/lang/String;Ljava/util/Locale;Lfreemarker/core/d0;)Lfreemarker/core/f4;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    new-instance p1, Landroid/support/v4/lb2;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No custom number format was defined with name "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {v3}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/lb2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    sget-object v0, Lfreemarker/core/h1;->do:Lfreemarker/core/h1;

    invoke-virtual {v0, p1, p2, p0}, Lfreemarker/core/h1;->do(Ljava/lang/String;Ljava/util/Locale;Lfreemarker/core/d0;)Lfreemarker/core/f4;

    move-result-object p1

    return-object p1
.end method

.method private E2(Lfreemarker/template/TemplateException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/support/v4/k52;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v4/k52;

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/k52;->getReplaceWithCause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lfreemarker/template/TemplateException;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateException;

    .line 5
    :cond_0
    iget-object v0, p0, Lfreemarker/core/d0;->r1:Ljava/lang/Throwable;

    if-eq v0, p1, :cond_4

    .line 6
    iput-object p1, p0, Lfreemarker/core/d0;->r1:Ljava/lang/Throwable;

    .line 7
    invoke-virtual {p0}, Lfreemarker/core/t;->volatile()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lfreemarker/core/d0;->E1:Lfreemarker/log/if;

    invoke-virtual {v0}, Lfreemarker/log/if;->while()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0}, Lfreemarker/core/d0;->V2()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Error executing FreeMarker template"

    .line 9
    invoke-virtual {v0, v1, p1}, Lfreemarker/log/if;->else(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :cond_1
    :try_start_0
    instance-of v0, p1, Landroid/support/v4/q12;

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lfreemarker/core/t;->f()Lfreemarker/template/TemplateExceptionHandler;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    invoke-interface {v0, p1, p0, v1}, Lfreemarker/template/TemplateExceptionHandler;->handleTemplateException(Lfreemarker/template/TemplateException;Lfreemarker/core/d0;Ljava/io/Writer;)V

    return-void

    .line 12
    :cond_2
    throw p1
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {p0}, Lfreemarker/core/d0;->V2()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p0}, Lfreemarker/core/t;->goto()Lfreemarker/template/AttemptExceptionReporter;

    move-result-object v1

    invoke-interface {v1, p1, p0}, Lfreemarker/template/AttemptExceptionReporter;->report(Lfreemarker/template/TemplateException;Lfreemarker/core/d0;)V

    .line 15
    :cond_3
    throw v0

    .line 16
    :cond_4
    throw p1
.end method

.method private static G1(Lfreemarker/core/b4;)Lfreemarker/core/x1;
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 1
    instance-of v0, p0, Lfreemarker/core/x1;

    if-eqz v0, :cond_0

    check-cast p0, Lfreemarker/core/x1;

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/b4;->synchronized()Lfreemarker/core/b4;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private G2(Ljava/lang/String;Lfreemarker/template/static;Ljava/lang/String;)Lfreemarker/core/d0$this;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p2}, Lfreemarker/template/static;->h1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/d0;->u1()Lfreemarker/template/do;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/template/do;->Y1()Lfreemarker/cache/throws;

    move-result-object v1

    .line 3
    invoke-static {v1, p1}, Lfreemarker/cache/private;->do(Lfreemarker/cache/throws;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    const/4 p1, 0x1

    .line 4
    :goto_0
    iget-object v1, p0, Lfreemarker/core/d0;->o1:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lfreemarker/core/d0;->o1:Ljava/util/HashMap;

    .line 6
    :cond_1
    iget-object v1, p0, Lfreemarker/core/d0;->o1:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/core/d0$this;

    if-eqz v1, :cond_3

    if-eqz p3, :cond_2

    .line 7
    invoke-virtual {p0, p3, v1}, Lfreemarker/core/d0;->u3(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    .line 8
    invoke-virtual {p0}, Lfreemarker/core/d0;->U2()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    iget-object v2, p0, Lfreemarker/core/d0;->l1:Lfreemarker/core/d0$this;

    if-ne p2, v2, :cond_2

    .line 9
    iget-object p2, p0, Lfreemarker/core/d0;->n1:Lfreemarker/core/d0$this;

    invoke-virtual {p2, p3, v1}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    if-nez p1, :cond_6

    .line 10
    instance-of p1, v1, Lfreemarker/core/d0$else;

    if-eqz p1, :cond_6

    .line 11
    check-cast v1, Lfreemarker/core/d0$else;

    invoke-static {v1}, Lfreemarker/core/d0$else;->access$400(Lfreemarker/core/d0$else;)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 12
    new-instance v1, Lfreemarker/core/d0$else;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lfreemarker/core/d0$else;-><init>(Lfreemarker/core/d0;Ljava/lang/String;Lfreemarker/core/d0$do;)V

    goto :goto_1

    :cond_4
    new-instance v1, Lfreemarker/core/d0$this;

    invoke-direct {v1, p0, p2}, Lfreemarker/core/d0$this;-><init>(Lfreemarker/core/d0;Lfreemarker/template/static;)V

    .line 13
    :goto_1
    iget-object v2, p0, Lfreemarker/core/d0;->o1:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_5

    .line 14
    invoke-virtual {p0, p3, v1}, Lfreemarker/core/d0;->u3(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    .line 15
    iget-object v2, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    iget-object v3, p0, Lfreemarker/core/d0;->l1:Lfreemarker/core/d0$this;

    if-ne v2, v3, :cond_5

    .line 16
    iget-object v2, p0, Lfreemarker/core/d0;->n1:Lfreemarker/core/d0$this;

    invoke-virtual {v2, p3, v1}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    if-nez p1, :cond_6

    .line 17
    invoke-direct {p0, v1, p2}, Lfreemarker/core/d0;->M2(Lfreemarker/core/d0$this;Lfreemarker/template/static;)V

    .line 18
    :cond_6
    :goto_2
    iget-object p1, p0, Lfreemarker/core/d0;->o1:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/core/d0$this;

    return-object p1
.end method

.method private M1()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/d0;->e2()Lfreemarker/template/static;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/static;->c1()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private M2(Lfreemarker/core/d0$this;Lfreemarker/template/static;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    .line 2
    iput-object p1, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    .line 3
    iget-object p1, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    .line 4
    sget-object v1, Lfreemarker/template/utility/break;->do:Lfreemarker/template/utility/break;

    iput-object v1, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    .line 5
    :try_start_0
    invoke-virtual {p0, p2}, Lfreemarker/core/d0;->K2(Lfreemarker/template/static;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput-object p1, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    .line 7
    iput-object v0, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    return-void

    :catchall_0
    move-exception p2

    .line 8
    iput-object p1, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    .line 9
    iput-object v0, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    .line 10
    throw p2
.end method

.method private N1()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/d0;->e2()Lfreemarker/template/static;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/static;->e1()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/d0;->U0:Lfreemarker/template/do;

    invoke-virtual {p0}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/template/do;->x1(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static N2(Lfreemarker/core/b4;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {p0, v0}, Lfreemarker/core/d0;->Z0(Lfreemarker/core/b4;Ljava/lang/StringBuilder;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private Q2(Lfreemarker/core/x1;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lfreemarker/core/h4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/core/x1;",
            "Ljava/util/Map;",
            "Ljava/util/List<",
            "+",
            "Lfreemarker/core/h0;",
            ">;",
            "Ljava/util/List<",
            "Lfreemarker/core/h0;",
            ">;",
            "Lfreemarker/core/h4;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/core/x1;->while:Lfreemarker/core/x1;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lfreemarker/core/d0;->V0:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lfreemarker/core/d0;->e3(Lfreemarker/core/b4;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    :try_start_0
    new-instance v2, Lfreemarker/core/x1$do;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, p1, p0, p5, p4}, Lfreemarker/core/x1$do;-><init>(Lfreemarker/core/x1;Lfreemarker/core/d0;Lfreemarker/core/h4;Ljava/util/List;)V

    .line 5
    invoke-direct {p0, v2, p1, p2, p3}, Lfreemarker/core/d0;->s3(Lfreemarker/core/x1$do;Lfreemarker/core/x1;Ljava/util/Map;Ljava/util/List;)V

    if-nez v0, :cond_2

    .line 6
    invoke-direct {p0, p1}, Lfreemarker/core/d0;->e3(Lfreemarker/core/b4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_1

    :cond_2
    move v1, v0

    .line 7
    :goto_1
    :try_start_1
    iget-object p2, p0, Lfreemarker/core/d0;->j1:Lfreemarker/core/x1$do;

    .line 8
    iput-object v2, p0, Lfreemarker/core/d0;->j1:Lfreemarker/core/x1$do;

    .line 9
    iget-object p3, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    const/4 p4, 0x0

    .line 10
    iput-object p4, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    .line 11
    iget-object p4, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    .line 12
    iget-object p5, p0, Lfreemarker/core/d0;->t1:Ljava/util/HashMap;

    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lfreemarker/core/d0$this;

    iput-object p5, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    invoke-virtual {v2, p0}, Lfreemarker/core/x1$do;->for(Lfreemarker/core/d0;)V

    .line 14
    invoke-virtual {p1}, Lfreemarker/core/b4;->finally()[Lfreemarker/core/b4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/core/d0;->A3([Lfreemarker/core/b4;)V
    :try_end_2
    .catch Lfreemarker/core/p3$do; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lfreemarker/template/TemplateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :try_start_3
    iput-object p2, p0, Lfreemarker/core/d0;->j1:Lfreemarker/core/x1$do;

    .line 16
    iput-object p3, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    .line 17
    :goto_2
    iput-object p4, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 18
    :try_start_4
    invoke-direct {p0, p1}, Lfreemarker/core/d0;->E2(Lfreemarker/template/TemplateException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 19
    :try_start_5
    iput-object p2, p0, Lfreemarker/core/d0;->j1:Lfreemarker/core/x1$do;

    .line 20
    iput-object p3, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    goto :goto_2

    .line 21
    :goto_3
    iput-object p2, p0, Lfreemarker/core/d0;->j1:Lfreemarker/core/x1$do;

    .line 22
    iput-object p3, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    .line 23
    iput-object p4, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    .line 24
    throw p1

    .line 25
    :catch_1
    iput-object p2, p0, Lfreemarker/core/d0;->j1:Lfreemarker/core/x1$do;

    .line 26
    iput-object p3, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :goto_4
    if-eqz v1, :cond_3

    .line 27
    invoke-direct {p0}, Lfreemarker/core/d0;->c3()V

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    move v0, v1

    goto :goto_5

    :catchall_2
    move-exception p1

    :goto_5
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lfreemarker/core/d0;->c3()V

    .line 28
    :cond_4
    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public static synthetic R0(Lfreemarker/core/d0;)Lfreemarker/template/TemplateHashModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/d0;->W0:Lfreemarker/template/TemplateHashModel;

    return-object p0
.end method

.method public static synthetic S0(Lfreemarker/core/d0;)Lfreemarker/template/do;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/d0;->U0:Lfreemarker/template/do;

    return-object p0
.end method

.method public static synthetic T0(Lfreemarker/core/d0;)Lfreemarker/core/d0$this;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/d0;->n1:Lfreemarker/core/d0$this;

    return-object p0
.end method

.method private T2()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->U0:Lfreemarker/template/do;

    invoke-virtual {v0}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/we2;->intValue()I

    move-result v0

    sget v1, Landroid/support/v4/ul2;->try:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic U0(Lfreemarker/core/d0;)Ljava/io/Writer;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    return-object p0
.end method

.method public static synthetic V0(Lfreemarker/core/d0;Ljava/io/Writer;)Ljava/io/Writer;
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    return-object p1
.end method

.method public static synthetic W0(Lfreemarker/core/d0;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/d0;->N1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X0(Lfreemarker/core/d0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/d0;->M1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static X2(Ljava/lang/Class;)Z
    .locals 1

    .line 1
    const-class v0, Ljava/util/Date;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/sql/Date;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/sql/Time;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/sql/Timestamp;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/sql/Date;

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/sql/Time;

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic Y0(Lfreemarker/core/d0;Lfreemarker/core/d0$this;Lfreemarker/template/static;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/d0;->M2(Lfreemarker/core/d0$this;Lfreemarker/template/static;)V

    return-void
.end method

.method private Y1(Lfreemarker/core/d0$this;Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 1
    invoke-virtual {p1, p2}, Lfreemarker/template/native;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    .line 2
    instance-of p2, p1, Lfreemarker/core/x1;

    if-nez p2, :cond_0

    instance-of p2, p1, Lfreemarker/template/TemplateTransformModel;

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    move-object v0, p1

    goto/16 :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lfreemarker/core/d0$this;->getTemplate()Lfreemarker/template/static;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p3}, Lfreemarker/template/static;->m1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v0

    .line 5
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lfreemarker/template/native;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    .line 7
    instance-of p2, p1, Lfreemarker/core/x1;

    if-nez p2, :cond_0

    instance-of p2, p1, Lfreemarker/template/TemplateTransformModel;

    if-nez p2, :cond_0

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "N:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lfreemarker/template/native;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    .line 10
    instance-of v3, v2, Lfreemarker/core/x1;

    if-nez v3, :cond_5

    instance-of v3, v2, Lfreemarker/template/TemplateTransformModel;

    if-nez v3, :cond_5

    :cond_4
    move-object v2, v0

    .line 11
    :cond_5
    invoke-virtual {v1}, Lfreemarker/template/static;->d1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "D:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lfreemarker/template/native;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    .line 13
    instance-of p3, v2, Lfreemarker/core/x1;

    if-nez p3, :cond_6

    instance-of p3, v2, Lfreemarker/template/TemplateTransformModel;

    if-nez p3, :cond_6

    move-object v2, v0

    :cond_6
    if-nez v2, :cond_7

    .line 14
    invoke-virtual {p1, p2}, Lfreemarker/template/native;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    .line 15
    instance-of p2, p1, Lfreemarker/core/x1;

    if-nez p2, :cond_0

    instance-of p2, p1, Lfreemarker/template/TemplateTransformModel;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_7
    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method private Y2(Lfreemarker/template/TemplateNodeModel;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const-string v0, ""

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, " and namespace "

    goto :goto_0

    :cond_0
    const-string v0, " and no namespace"

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "No macro or directive is defined for node named "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 2
    new-instance v3, Landroid/support/v4/fl2;

    .line 3
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModel;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 p1, 0x2

    aput-object v0, v1, p1

    const/4 p1, 0x3

    aput-object p2, v1, p1

    const/4 p1, 0x4

    const-string p2, ", and there is no fallback handler called @"

    aput-object p2, v1, p1

    const/4 p1, 0x5

    aput-object p3, v1, p1

    const/4 p1, 0x6

    const-string p2, " either."

    aput-object p2, v1, p1

    return-object v1
.end method

.method public static Z0(Lfreemarker/core/b4;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/b4;->continue()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lfreemarker/core/b5;->strictfp(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  ["

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Lfreemarker/core/d0;->G1(Lfreemarker/core/b4;)Lfreemarker/core/x1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget v1, p0, Lfreemarker/core/h4;->for:I

    iget p0, p0, Lfreemarker/core/h4;->if:I

    invoke-static {v0, v1, p0}, Lfreemarker/core/b5;->else(Lfreemarker/core/x1;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object v0

    iget v1, p0, Lfreemarker/core/h4;->for:I

    iget p0, p0, Lfreemarker/core/h4;->if:I

    .line 6
    invoke-static {v0, v1, p0}, Lfreemarker/core/b5;->goto(Lfreemarker/template/static;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, "]"

    .line 7
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static Z2(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private a2(Ljava/lang/String;Ljava/lang/String;I)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->v1:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge p3, v0, :cond_1

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/core/d0;->v1:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v1, p3}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v1

    check-cast v1, Lfreemarker/core/d0$this;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-direct {p0, v1, p1, p2}, Lfreemarker/core/d0;->Y1(Lfreemarker/core/d0$this;Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 4
    :catch_0
    new-instance p1, Landroid/support/v4/nl2;

    const-string p2, "A \"using\" clause should contain a sequence of namespaces or strings that indicate the location of importable macro libraries."

    invoke-direct {p1, p0, p2}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    add-int/lit8 p3, p3, 0x1

    .line 5
    iput p3, p0, Lfreemarker/core/d0;->w1:I

    .line 6
    iput-object p1, p0, Lfreemarker/core/d0;->x1:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lfreemarker/core/d0;->y1:Ljava/lang/String;

    :cond_2
    return-object v1
.end method

.method private final b2(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lfreemarker/core/v1;->new()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    iget-object v1, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    invoke-virtual {v1, v0}, Lfreemarker/core/v1;->do(I)Lfreemarker/core/LocalContext;

    move-result-object v1

    .line 4
    invoke-interface {v1, p1}, Lfreemarker/core/LocalContext;->getLocalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lfreemarker/core/d0;->j1:Lfreemarker/core/x1$do;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lfreemarker/core/x1$do;->getLocalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public static b3([Lfreemarker/core/b4;ZLjava/io/Writer;)V
    .locals 13

    .line 1
    instance-of v0, p2, Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/io/PrintWriter;

    const/16 v1, 0xa

    if-eqz p0, :cond_13

    .line 2
    :try_start_0
    array-length v2, p0

    const/16 v3, 0x9

    if-eqz p1, :cond_2

    if-gt v2, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x9

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v2

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_3

    if-ge v4, v2, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_4
    if-ge v7, v2, :cond_d

    .line 3
    aget-object v11, p0, v7

    if-lez v7, :cond_4

    .line 4
    instance-of v12, v11, Lfreemarker/core/super;

    if-nez v12, :cond_5

    :cond_4
    if-le v7, v6, :cond_6

    add-int/lit8 v12, v7, -0x1

    aget-object v12, p0, v12

    instance-of v12, v12, Lfreemarker/core/super;

    if-eqz v12, :cond_6

    :cond_5
    const/4 v12, 0x1

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    :goto_5
    if-ge v10, v4, :cond_c

    if-eqz v12, :cond_8

    if-nez p1, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_8
    :goto_6
    if-nez v7, :cond_9

    const-string v12, "\t- Failed at: "

    goto :goto_7

    :cond_9
    if-eqz v12, :cond_a

    const-string v12, "\t~ Reached through: "

    goto :goto_7

    :cond_a
    const-string v12, "\t- Reached through: "

    .line 5
    :goto_7
    invoke-virtual {p2, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 6
    invoke-static {v11}, Lfreemarker/core/d0;->N2(Lfreemarker/core/b4;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_8

    .line 8
    :cond_b
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V

    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v8, v8, 0x1

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_d
    if-lez v8, :cond_e

    const-string p0, "\t... (Had "

    .line 9
    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/2addr v8, v9

    .line 10
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p0, " more, hidden for tersenes)"

    .line 11
    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v5, 0x1

    :cond_e
    if-lez v9, :cond_11

    if-eqz v5, :cond_f

    const/16 p0, 0x20

    .line 12
    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(I)V

    goto :goto_a

    .line 13
    :cond_f
    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V

    .line 14
    :goto_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "(Hidden "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \"~\" lines for terseness)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz v0, :cond_10

    .line 15
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_b

    .line 16
    :cond_10
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_b

    :cond_11
    move v6, v5

    :goto_b
    if-eqz v6, :cond_15

    if-eqz v0, :cond_12

    .line 17
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_c

    .line 18
    :cond_12
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_c

    :cond_13
    const-string p0, "(The stack was empty)"

    .line 19
    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz v0, :cond_14

    .line 20
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_c

    .line 21
    :cond_14
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception p0

    .line 22
    sget-object p1, Lfreemarker/core/d0;->E1:Lfreemarker/log/if;

    const-string p2, "Failed to print FTL stack trace"

    invoke-virtual {p1, p2, p0}, Lfreemarker/log/if;->else(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_c
    return-void
.end method

.method private c3()V
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/d0;->Y0:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfreemarker/core/d0;->Y0:I

    return-void
.end method

.method private e3(Lfreemarker/core/b4;)V
    .locals 5

    .line 1
    iget v0, p0, Lfreemarker/core/d0;->Y0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfreemarker/core/d0;->Y0:I

    .line 2
    iget-object v1, p0, Lfreemarker/core/d0;->X0:[Lfreemarker/core/b4;

    .line 3
    array-length v2, v1

    if-le v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    .line 4
    new-array v2, v2, [Lfreemarker/core/b4;

    const/4 v3, 0x0

    .line 5
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 6
    aget-object v4, v1, v3

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-object v2, p0, Lfreemarker/core/d0;->X0:[Lfreemarker/core/b4;

    move-object v1, v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 8
    aput-object p1, v1, v0

    return-void
.end method

.method private f3(Lfreemarker/core/LocalContext;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lfreemarker/core/v1;

    invoke-direct {v0}, Lfreemarker/core/v1;-><init>()V

    iput-object v0, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    invoke-virtual {v0, p1}, Lfreemarker/core/v1;->for(Lfreemarker/core/LocalContext;)V

    return-void
.end method

.method private g1()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lfreemarker/core/d0;->b1:Ljava/util/Map;

    .line 2
    iput-object v0, p0, Lfreemarker/core/d0;->a1:Lfreemarker/core/f4;

    .line 3
    iput-object v0, p0, Lfreemarker/core/d0;->c1:[Lfreemarker/core/z3;

    .line 4
    iput-object v0, p0, Lfreemarker/core/d0;->d1:[Ljava/util/HashMap;

    .line 5
    iput-object v0, p0, Lfreemarker/core/d0;->h1:Ljava/text/Collator;

    .line 6
    iput-object v0, p0, Lfreemarker/core/d0;->z1:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lfreemarker/core/d0;->A1:Z

    return-void
.end method

.method private i2(IZZ)Lfreemarker/core/z3;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    invoke-direct {p0, p1, p3, p2}, Lfreemarker/core/d0;->q2(IZZ)I

    move-result v0

    .line 2
    iget-object v1, p0, Lfreemarker/core/d0;->c1:[Lfreemarker/core/z3;

    if-nez v1, :cond_0

    const/16 v1, 0x10

    new-array v1, v1, [Lfreemarker/core/z3;

    .line 3
    iput-object v1, p0, Lfreemarker/core/d0;->c1:[Lfreemarker/core/z3;

    .line 4
    :cond_0
    aget-object v2, v1, v0

    if-nez v2, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lfreemarker/core/t;->finally()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid date type enum: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_2
    invoke-virtual {p0}, Lfreemarker/core/t;->extends()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lfreemarker/core/t;->g()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v4, v2

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    .line 9
    invoke-direct/range {v3 .. v8}, Lfreemarker/core/d0;->p2(Ljava/lang/String;IZZZ)Lfreemarker/core/z3;

    move-result-object v2

    .line 10
    aput-object v2, v1, v0

    :cond_4
    return-object v2

    .line 11
    :cond_5
    new-instance p1, Landroid/support/v4/xb2;

    invoke-direct {p1}, Landroid/support/v4/xb2;-><init>()V

    throw p1
.end method

.method private j3(Lfreemarker/core/b4;)Lfreemarker/core/b4;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->X0:[Lfreemarker/core/b4;

    iget v1, p0, Lfreemarker/core/d0;->Y0:I

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    return-object p1
.end method

.method private l1(Ljava/lang/String;)Lfreemarker/core/d1$do;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/d0;->R1()Lfreemarker/core/v1;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lfreemarker/core/v1;->new()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 3
    invoke-virtual {v0, v1}, Lfreemarker/core/v1;->do(I)Lfreemarker/core/LocalContext;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lfreemarker/core/d1$do;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    move-object v3, v2

    check-cast v3, Lfreemarker/core/d1$do;

    .line 5
    invoke-virtual {v3, p1}, Lfreemarker/core/d1$do;->else(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    :cond_0
    check-cast v2, Lfreemarker/core/d1$do;

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static l3(Lfreemarker/core/d0;)V
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/core/d0;->D1:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private p2(Ljava/lang/String;IZZZ)Lfreemarker/core/z3;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->d1:[Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p5, :cond_3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/util/HashMap;

    .line 2
    iput-object v0, p0, Lfreemarker/core/d0;->d1:[Ljava/util/HashMap;

    .line 3
    :cond_0
    invoke-direct {p0, p2, p4, p3}, Lfreemarker/core/d0;->q2(IZZ)I

    move-result v2

    .line 4
    aget-object v3, v0, v2

    if-nez v3, :cond_2

    if-eqz p5, :cond_1

    .line 5
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    aput-object v3, v0, v2

    goto :goto_0

    :cond_1
    move-object v1, v3

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lfreemarker/core/z3;

    :goto_0
    if-eqz v1, :cond_1

    return-object v1

    .line 8
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v5

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lfreemarker/core/t;->a()Ljava/util/TimeZone;

    move-result-object p3

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lfreemarker/core/t;->h()Ljava/util/TimeZone;

    move-result-object p3

    :goto_2
    move-object v6, p3

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v7, p4

    .line 9
    invoke-direct/range {v2 .. v7}, Lfreemarker/core/d0;->r2(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;Z)Lfreemarker/core/z3;

    move-result-object p2

    if-eqz p5, :cond_5

    .line 10
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object p2
.end method

.method private q2(IZZ)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    add-int/2addr p1, p2

    if-eqz p3, :cond_1

    const/16 v0, 0x8

    :cond_1
    add-int/2addr p1, v0

    return p1
.end method

.method private r2(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;Z)Lfreemarker/core/z3;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :cond_0
    const/16 v2, 0x78

    const/16 v3, 0x73

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    if-le v0, v4, :cond_1

    .line 3
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 4
    sget-object v0, Lfreemarker/core/x4;->for:Lfreemarker/core/x4;

    goto/16 :goto_3

    :cond_1
    const/16 v2, 0x69

    if-ne v1, v2, :cond_2

    const/4 v2, 0x2

    if-le v0, v2, :cond_2

    .line 5
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_2

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_2

    .line 7
    sget-object v0, Lfreemarker/core/v0;->for:Lfreemarker/core/v0;

    goto :goto_3

    :cond_2
    const/16 v2, 0x40

    if-ne v1, v2, :cond_8

    if-le v0, v4, :cond_8

    .line 8
    invoke-virtual {p0}, Lfreemarker/core/d0;->U2()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lfreemarker/core/t;->m()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 9
    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_5

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_5

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_5
    :goto_1
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    if-ge v1, v0, :cond_6

    add-int/2addr v1, v4

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    const-string p1, ""

    .line 13
    :goto_2
    invoke-virtual {p0, v2}, Lfreemarker/core/t;->public(Ljava/lang/String;)Lfreemarker/core/a4;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 14
    :cond_7
    new-instance p1, Landroid/support/v4/lb2;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No custom date format was defined with name "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {v2}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/lb2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_8
    sget-object v0, Lfreemarker/core/f1;->do:Lfreemarker/core/f1;

    :goto_3
    move-object v2, p1

    move-object v1, v0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p0

    .line 17
    invoke-virtual/range {v1 .. v7}, Lfreemarker/core/a4;->do(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;ZLfreemarker/core/d0;)Lfreemarker/core/z3;

    move-result-object p1

    return-object p1
.end method

.method private s3(Lfreemarker/core/x1$do;Lfreemarker/core/x1;Ljava/util/Map;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/core/x1$do;",
            "Lfreemarker/core/x1;",
            "Ljava/util/Map;",
            "Ljava/util/List<",
            "+",
            "Lfreemarker/core/h0;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Landroid/support/v4/nl2;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    .line 1
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/x1;->w()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x5

    const-string v9, "Function "

    const-string v10, "Macro "

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz p3, :cond_5

    if-eqz v3, :cond_0

    .line 2
    new-instance v2, Lfreemarker/template/native;

    invoke-direct {v2, v13}, Lfreemarker/template/native;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 3
    invoke-virtual {v0, v3, v2}, Lfreemarker/core/x1$do;->new(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    move-object v13, v2

    .line 4
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v5, p2

    .line 7
    invoke-virtual {v5, v15}, Lfreemarker/core/x1;->y(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    new-instance v0, Landroid/support/v4/nl2;

    new-array v2, v8, [Ljava/lang/Object;

    .line 9
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/x1;->z()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v9, v10

    :goto_1
    aput-object v9, v2, v12

    new-instance v3, Landroid/support/v4/fl2;

    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/x1;->x()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, v11

    const-string v3, " has no parameter with name "

    aput-object v3, v2, v7

    new-instance v3, Landroid/support/v4/fl2;

    invoke-direct {v3, v15}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, v6

    const/4 v3, 0x4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw v0

    .line 10
    :cond_3
    :goto_2
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lfreemarker/core/h0;

    .line 11
    invoke-virtual {v14, v1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v14

    if-eqz v16, :cond_4

    .line 12
    invoke-virtual {v0, v15, v14}, Lfreemarker/core/x1$do;->new(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {v13, v15, v14}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    move-object/from16 v5, p2

    if-eqz v2, :cond_a

    if-eqz v3, :cond_6

    .line 14
    new-instance v14, Lfreemarker/template/return;

    invoke-direct {v14, v13}, Lfreemarker/template/return;-><init>(Lfreemarker/template/ObjectWrapper;)V

    .line 15
    invoke-virtual {v0, v3, v14}, Lfreemarker/core/x1$do;->new(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    move-object v13, v14

    .line 16
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/x1;->v()[Ljava/lang/String;

    move-result-object v14

    .line 17
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v15

    .line 18
    array-length v8, v14

    if-ge v8, v15, :cond_8

    if-nez v3, :cond_8

    .line 19
    new-instance v0, Landroid/support/v4/nl2;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    .line 20
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/x1;->z()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    move-object v9, v10

    :goto_3
    aput-object v9, v2, v12

    new-instance v3, Landroid/support/v4/fl2;

    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/x1;->x()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, v11

    const-string v3, " only accepts "

    aput-object v3, v2, v7

    new-instance v3, Landroid/support/v4/jl2;

    array-length v5, v14

    invoke-direct {v3, v5}, Landroid/support/v4/jl2;-><init>(I)V

    aput-object v3, v2, v6

    const-string v3, " parameters, but got "

    const/4 v5, 0x4

    aput-object v3, v2, v5

    new-instance v3, Landroid/support/v4/jl2;

    invoke-direct {v3, v15}, Landroid/support/v4/jl2;-><init>(I)V

    const/4 v5, 0x5

    aput-object v3, v2, v5

    const/4 v3, 0x6

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw v0

    :cond_8
    :goto_4
    if-ge v12, v15, :cond_a

    .line 21
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/h0;

    .line 22
    invoke-virtual {v3, v1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    .line 23
    :try_start_0
    array-length v4, v14

    if-ge v12, v4, :cond_9

    .line 24
    aget-object v4, v14, v12

    .line 25
    invoke-virtual {v0, v4, v3}, Lfreemarker/core/x1$do;->new(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    goto :goto_5

    .line 26
    :cond_9
    invoke-virtual {v13, v3}, Lfreemarker/template/return;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 27
    new-instance v2, Landroid/support/v4/nl2;

    invoke-direct {v2, v0, v1}, Landroid/support/v4/nl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;)V

    throw v2

    :cond_a
    return-void
.end method

.method public static w1()Lfreemarker/core/d0;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/core/d0;->D1:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/d0;

    return-object v0
.end method

.method private w3(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/d0;->W2()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public A0(Ljava/util/TimeZone;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/t;->a()Ljava/util/TimeZone;

    move-result-object v0

    .line 2
    invoke-super {p0, p1}, Lfreemarker/core/t;->A0(Ljava/util/TimeZone;)V

    .line 3
    invoke-static {p1, v0}, Lfreemarker/core/d0;->Z2(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 4
    iget-object p1, p0, Lfreemarker/core/d0;->c1:[Lfreemarker/core/z3;

    const/16 v0, 0x10

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    :goto_0
    if-ge p1, v0, :cond_1

    .line 5
    iget-object v3, p0, Lfreemarker/core/d0;->c1:[Lfreemarker/core/z3;

    aget-object v3, v3, p1

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v3}, Lfreemarker/core/z3;->try()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, p0, Lfreemarker/core/d0;->c1:[Lfreemarker/core/z3;

    aput-object v2, v3, p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lfreemarker/core/d0;->d1:[Ljava/util/HashMap;

    if-eqz p1, :cond_2

    :goto_1
    if-ge v1, v0, :cond_2

    .line 9
    iget-object p1, p0, Lfreemarker/core/d0;->d1:[Ljava/util/HashMap;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10
    :cond_2
    iput-object v2, p0, Lfreemarker/core/d0;->e1:Ljava/lang/Boolean;

    :cond_3
    return-void
.end method

.method public A1()Lfreemarker/template/static;
    .locals 2

    .line 1
    iget v0, p0, Lfreemarker/core/d0;->Y0:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/d0;->V1()Lfreemarker/template/static;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lfreemarker/core/d0;->X0:[Lfreemarker/core/b4;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final A3([Lfreemarker/core/b4;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    if-nez v3, :cond_1

    goto :goto_5

    .line 2
    :cond_1
    invoke-direct {p0, v3}, Lfreemarker/core/d0;->e3(Lfreemarker/core/b4;)V

    .line 3
    :try_start_0
    invoke-virtual {v3, p0}, Lfreemarker/core/b4;->native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    if-nez v6, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p0, v6}, Lfreemarker/core/d0;->y3(Lfreemarker/core/b4;)V
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 6
    :cond_3
    :goto_2
    invoke-direct {p0}, Lfreemarker/core/d0;->c3()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception v3

    .line 7
    :try_start_1
    invoke-direct {p0, v3}, Lfreemarker/core/d0;->E2(Lfreemarker/template/TemplateException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :goto_4
    invoke-direct {p0}, Lfreemarker/core/d0;->c3()V

    .line 9
    throw p1

    :cond_4
    :goto_5
    return-void
.end method

.method public B1()Lfreemarker/template/TemplateNodeModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->u1:Lfreemarker/template/TemplateNodeModel;

    return-object v0
.end method

.method public B3([Lfreemarker/core/b4;Lfreemarker/template/TemplateDirectiveModel;Ljava/util/Map;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lfreemarker/core/d0$break;

    invoke-direct {v1, p0, p1, v0}, Lfreemarker/core/d0$break;-><init>(Lfreemarker/core/d0;[Lfreemarker/core/b4;Lfreemarker/core/d0$do;)V

    move-object v0, v1

    :goto_0
    if-eqz p4, :cond_2

    .line 2
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lfreemarker/template/TemplateModel;

    goto :goto_2

    .line 4
    :cond_2
    :goto_1
    sget-object p1, Lfreemarker/core/d0;->K1:[Lfreemarker/template/TemplateModel;

    .line 5
    :goto_2
    array-length v1, p1

    if-lez v1, :cond_3

    .line 6
    new-instance v1, Lfreemarker/core/d0$do;

    invoke-direct {v1, p0, p4, p1}, Lfreemarker/core/d0$do;-><init>(Lfreemarker/core/d0;Ljava/util/List;[Lfreemarker/template/TemplateModel;)V

    invoke-direct {p0, v1}, Lfreemarker/core/d0;->f3(Lfreemarker/core/LocalContext;)V

    .line 7
    :cond_3
    :try_start_0
    invoke-interface {p2, p0, p3, p1, v0}, Lfreemarker/template/TemplateDirectiveModel;->execute(Lfreemarker/core/d0;Ljava/util/Map;[Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateDirectiveBody;)V
    :try_end_0
    .catch Lfreemarker/core/m0; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    array-length p1, p1

    if-lez p1, :cond_4

    .line 9
    iget-object p1, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    invoke-virtual {p1}, Lfreemarker/core/v1;->if()V

    :cond_4
    return-void

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    .line 10
    :try_start_1
    invoke-static {p2, p0}, Lfreemarker/core/f0;->return(Ljava/lang/Throwable;Lfreemarker/core/d0;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 11
    instance-of p3, p2, Ljava/lang/RuntimeException;

    if-eqz p3, :cond_5

    .line 12
    check-cast p2, Ljava/lang/RuntimeException;

    throw p2

    .line 13
    :cond_5
    new-instance p3, Landroid/support/v4/kb2;

    invoke-direct {p3, p2}, Landroid/support/v4/kb2;-><init>(Ljava/lang/Throwable;)V

    throw p3

    .line 14
    :cond_6
    new-instance p3, Landroid/support/v4/nl2;

    const-string p4, "Directive has thrown an unchecked exception; see the cause exception."

    invoke-direct {p3, p2, p0, p4}, Landroid/support/v4/nl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Ljava/lang/String;)V

    throw p3

    :catch_1
    move-exception p2

    .line 15
    throw p2

    :catch_2
    move-exception p2

    .line 16
    throw p2

    :catch_3
    move-exception p2

    .line 17
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :goto_3
    array-length p1, p1

    if-lez p1, :cond_7

    .line 19
    iget-object p1, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    invoke-virtual {p1}, Lfreemarker/core/v1;->if()V

    .line 20
    :cond_7
    throw p2
.end method

.method public C1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->C1:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public C2(Lfreemarker/core/h0;)Lfreemarker/template/TemplateTransformModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lfreemarker/template/TemplateTransformModel;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lfreemarker/template/TemplateTransformModel;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lfreemarker/core/w0;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lfreemarker/core/d0;->U0:Lfreemarker/template/do;

    invoke-virtual {p1}, Lfreemarker/core/h4;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/template/do;->I1(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    .line 6
    instance-of v0, p1, Lfreemarker/template/TemplateTransformModel;

    if-eqz v0, :cond_1

    .line 7
    move-object v0, p1

    check-cast v0, Lfreemarker/template/TemplateTransformModel;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final C3([Lfreemarker/core/b4;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    .line 2
    iput-object p2, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lfreemarker/core/d0;->A3([Lfreemarker/core/b4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-object v0, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    return-void

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    .line 5
    throw p1
.end method

.method public D1()Lfreemarker/template/TemplateHashModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->W0:Lfreemarker/template/TemplateHashModel;

    instance-of v0, v0, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v0, :cond_0

    new-instance v0, Lfreemarker/core/d0$if;

    invoke-direct {v0, p0}, Lfreemarker/core/d0$if;-><init>(Lfreemarker/core/d0;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lfreemarker/core/d0$for;

    invoke-direct {v0, p0}, Lfreemarker/core/d0$for;-><init>(Lfreemarker/core/d0;)V

    :goto_0
    return-object v0
.end method

.method public D2(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/d0;->b2(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    sget-object p1, Lfreemarker/core/y2;->do:Lfreemarker/core/y2;

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    invoke-virtual {v0, p1}, Lfreemarker/template/native;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 4
    :cond_2
    invoke-virtual {p0, p1}, Lfreemarker/core/d0;->J1(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public D3([Lfreemarker/core/b4;Lfreemarker/template/TemplateTransformModel;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    invoke-interface {p2, v0, p3}, Lfreemarker/template/TemplateTransformModel;->getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2
    sget-object p2, Lfreemarker/core/d0;->M1:Ljava/io/Writer;

    .line 3
    :cond_0
    instance-of p3, p2, Lfreemarker/template/TransformControl;

    if-eqz p3, :cond_1

    move-object p3, p2

    check-cast p3, Lfreemarker/template/TransformControl;

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    .line 5
    iput-object p2, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz p3, :cond_2

    .line 6
    :try_start_1
    invoke-interface {p3}, Lfreemarker/template/TransformControl;->onStart()I

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, Lfreemarker/core/d0;->A3([Lfreemarker/core/b4;)V

    if-eqz p3, :cond_3

    .line 8
    invoke-interface {p3}, Lfreemarker/template/TransformControl;->afterBody()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 9
    :cond_3
    :try_start_2
    iput-object v0, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    if-eq v0, p2, :cond_9

    .line 10
    :goto_1
    invoke-virtual {p2}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Lfreemarker/template/TemplateException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_5

    .line 11
    :try_start_3
    instance-of v1, p1, Lfreemarker/core/m0;

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {p0}, Lfreemarker/core/d0;->u1()Lfreemarker/template/do;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/we2;->intValue()I

    move-result v1

    sget v2, Landroid/support/v4/ul2;->break:I

    if-ge v1, v2, :cond_5

    .line 13
    :cond_4
    invoke-interface {p3, p1}, Lfreemarker/template/TransformControl;->onError(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lfreemarker/template/TemplateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 14
    :try_start_4
    iput-object v0, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;
    :try_end_4
    .catch Lfreemarker/template/TemplateException; {:try_start_4 .. :try_end_4} :catch_3

    if-eq v0, p2, :cond_9

    goto :goto_1

    .line 15
    :cond_5
    :try_start_5
    throw p1
    :try_end_5
    .catch Lfreemarker/template/TemplateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 16
    :try_start_6
    invoke-static {p1, p0}, Lfreemarker/core/f0;->return(Ljava/lang/Throwable;Lfreemarker/core/d0;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 17
    instance-of p3, p1, Ljava/lang/RuntimeException;

    if-eqz p3, :cond_6

    .line 18
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 19
    :cond_6
    new-instance p3, Landroid/support/v4/kb2;

    invoke-direct {p3, p1}, Landroid/support/v4/kb2;-><init>(Ljava/lang/Throwable;)V

    throw p3

    .line 20
    :cond_7
    new-instance p3, Landroid/support/v4/nl2;

    const-string v1, "Transform has thrown an unchecked exception; see the cause exception."

    invoke-direct {p3, p1, p0, v1}, Landroid/support/v4/nl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Ljava/lang/String;)V

    throw p3

    :catch_0
    move-exception p1

    .line 21
    throw p1

    :catch_1
    move-exception p1

    .line 22
    throw p1

    :catch_2
    move-exception p1

    .line 23
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 24
    :try_start_7
    iput-object v0, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    if-eq v0, p2, :cond_8

    .line 25
    invoke-virtual {p2}, Ljava/io/Writer;->close()V

    .line 26
    :cond_8
    throw p1
    :try_end_7
    .catch Lfreemarker/template/TemplateException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception p1

    .line 27
    invoke-direct {p0, p1}, Lfreemarker/core/d0;->E2(Lfreemarker/template/TemplateException;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public E1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    invoke-virtual {v0}, Lfreemarker/core/d0$this;->getTemplate()Lfreemarker/template/static;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/static;->d1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E3(Lfreemarker/core/catch;Lfreemarker/core/b4;Lfreemarker/core/m3;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    .line 2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 3
    iput-object v1, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v2}, Lfreemarker/core/d0;->o3(Z)Z

    move-result v2

    .line 5
    iget-boolean v3, p0, Lfreemarker/core/d0;->q1:Z

    const/4 v4, 0x1

    .line 6
    :try_start_0
    iput-boolean v4, p0, Lfreemarker/core/d0;->q1:Z

    .line 7
    invoke-virtual {p0, p2}, Lfreemarker/core/d0;->y3(Lfreemarker/core/b4;)V
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iput-boolean v3, p0, Lfreemarker/core/d0;->q1:Z

    .line 9
    invoke-virtual {p0, v2}, Lfreemarker/core/d0;->o3(Z)Z

    .line 10
    iput-object v0, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    const/4 p2, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    iput-boolean v3, p0, Lfreemarker/core/d0;->q1:Z

    .line 12
    invoke-virtual {p0, v2}, Lfreemarker/core/d0;->o3(Z)Z

    .line 13
    iput-object v0, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    .line 14
    throw p1

    :catch_0
    move-exception p2

    .line 15
    iput-boolean v3, p0, Lfreemarker/core/d0;->q1:Z

    .line 16
    invoke-virtual {p0, v2}, Lfreemarker/core/d0;->o3(Z)Z

    .line 17
    iput-object v0, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    :goto_0
    if-eqz p2, :cond_1

    .line 18
    sget-object v0, Lfreemarker/core/d0;->F1:Lfreemarker/log/if;

    invoke-virtual {v0}, Lfreemarker/log/if;->throw()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in attempt block "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Lfreemarker/core/h4;->class()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {v0, p1, p2}, Lfreemarker/log/if;->new(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :cond_0
    :try_start_1
    iget-object p1, p0, Lfreemarker/core/d0;->Z0:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p0, p3}, Lfreemarker/core/d0;->y3(Lfreemarker/core/b4;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    iget-object p1, p0, Lfreemarker/core/d0;->Z0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v4

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lfreemarker/core/d0;->Z0:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v4

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 25
    throw p1

    .line 26
    :cond_1
    iget-object p1, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public F1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/d0;->A1:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/t;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/d0;->z1:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/t;->instanceof()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/d0;->z1:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lfreemarker/core/d0;->A1:Z

    .line 5
    :cond_1
    iget-object v0, p0, Lfreemarker/core/d0;->z1:Ljava/lang/String;

    return-object v0
.end method

.method public F2(Lfreemarker/template/static;Ljava/lang/String;)Lfreemarker/core/d0$this;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lfreemarker/core/d0;->G2(Ljava/lang/String;Lfreemarker/template/static;Ljava/lang/String;)Lfreemarker/core/d0$this;

    move-result-object p1

    return-object p1
.end method

.method public F3(Lfreemarker/core/d1$do;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/d0;->f3(Lfreemarker/core/LocalContext;)V

    .line 2
    :try_start_0
    invoke-virtual {p1, p0}, Lfreemarker/core/d1$do;->do(Lfreemarker/core/d0;)Z

    move-result p1
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    iget-object v0, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    invoke-virtual {v0}, Lfreemarker/core/v1;->if()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    :try_start_1
    invoke-direct {p0, p1}, Lfreemarker/core/d0;->E2(Lfreemarker/template/TemplateException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    .line 5
    :goto_1
    iget-object v0, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    invoke-virtual {v0}, Lfreemarker/core/v1;->if()V

    .line 6
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public G0(Lfreemarker/template/TemplateExceptionHandler;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/core/t;->G0(Lfreemarker/template/TemplateExceptionHandler;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lfreemarker/core/d0;->r1:Ljava/lang/Throwable;

    return-void
.end method

.method public G3(Lfreemarker/core/x1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->t1:Ljava/util/HashMap;

    iget-object v1, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    invoke-virtual {p1}, Lfreemarker/core/x1;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public H0(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/t;->g()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-super {p0, p1}, Lfreemarker/core/t;->H0(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lfreemarker/core/d0;->c1:[Lfreemarker/core/z3;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lfreemarker/core/d0;->c1:[Lfreemarker/core/z3;

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public H1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/d0;->B1:Z

    return v0
.end method

.method public H2(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/d0$this;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/t;->continue()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lfreemarker/core/d0;->I2(Ljava/lang/String;Ljava/lang/String;Z)Lfreemarker/core/d0$this;

    move-result-object p1

    return-object p1
.end method

.method public I0(Ljava/util/TimeZone;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/t;->h()Ljava/util/TimeZone;

    move-result-object v0

    .line 2
    invoke-super {p0, p1}, Lfreemarker/core/t;->I0(Ljava/util/TimeZone;)V

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 4
    iget-object p1, p0, Lfreemarker/core/d0;->c1:[Lfreemarker/core/z3;

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 5
    iget-object v3, p0, Lfreemarker/core/d0;->c1:[Lfreemarker/core/z3;

    aget-object v3, v3, p1

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v3}, Lfreemarker/core/z3;->try()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, p0, Lfreemarker/core/d0;->c1:[Lfreemarker/core/z3;

    aput-object v2, v3, p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lfreemarker/core/d0;->d1:[Ljava/util/HashMap;

    if-eqz p1, :cond_2

    :goto_1
    if-ge v1, v0, :cond_2

    .line 9
    iget-object p1, p0, Lfreemarker/core/d0;->d1:[Ljava/util/HashMap;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10
    :cond_2
    iput-object v2, p0, Lfreemarker/core/d0;->e1:Ljava/lang/Boolean;

    :cond_3
    return-void
.end method

.method public I1()Lfreemarker/core/d0$this;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->n1:Lfreemarker/core/d0$this;

    return-object v0
.end method

.method public I2(Ljava/lang/String;Ljava/lang/String;Z)Lfreemarker/core/d0$this;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lfreemarker/core/d0;->G2(Ljava/lang/String;Lfreemarker/template/static;Ljava/lang/String;)Lfreemarker/core/d0$this;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lfreemarker/core/d0;->s2(Ljava/lang/String;)Lfreemarker/template/static;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lfreemarker/core/d0;->G2(Ljava/lang/String;Lfreemarker/template/static;Ljava/lang/String;)Lfreemarker/core/d0$this;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public J1(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->n1:Lfreemarker/core/d0$this;

    invoke-virtual {v0, p1}, Lfreemarker/template/native;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/d0;->W0:Lfreemarker/template/TemplateHashModel;

    invoke-interface {v0, p1}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lfreemarker/core/d0;->U0:Lfreemarker/template/do;

    invoke-virtual {v0, p1}, Lfreemarker/template/do;->I1(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public J2(Lfreemarker/template/static;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lfreemarker/template/static;->g1()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/x1;

    invoke-virtual {p0, v0}, Lfreemarker/core/d0;->G3(Lfreemarker/core/x1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public K0(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lfreemarker/core/d0;->A1:Z

    .line 2
    invoke-super {p0, p1}, Lfreemarker/core/t;->K0(Ljava/lang/String;)V

    return-void
.end method

.method public K1()Lfreemarker/template/TemplateHashModel;
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/core/d0$new;

    invoke-direct {v0, p0}, Lfreemarker/core/d0$new;-><init>(Lfreemarker/core/d0;)V

    return-object v0
.end method

.method public K2(Lfreemarker/template/static;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/core/d0;->T2()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/d0;->e2()Lfreemarker/template/static;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lfreemarker/core/t;->z0(Lfreemarker/core/t;)V

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lfreemarker/core/d0;->p1:Lfreemarker/core/t;

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lfreemarker/core/d0;->J2(Lfreemarker/template/static;)V

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lfreemarker/template/static;->o1()Lfreemarker/core/b4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/core/d0;->y3(Lfreemarker/core/b4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Lfreemarker/core/t;->z0(Lfreemarker/core/t;)V

    goto :goto_1

    .line 8
    :cond_1
    iput-object v1, p0, Lfreemarker/core/d0;->p1:Lfreemarker/core/t;

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, v1}, Lfreemarker/core/t;->z0(Lfreemarker/core/t;)V

    goto :goto_2

    .line 10
    :cond_2
    iput-object v1, p0, Lfreemarker/core/d0;->p1:Lfreemarker/core/t;

    .line 11
    :goto_2
    throw p1
.end method

.method public L1()Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->g1:Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lfreemarker/template/utility/DateUtil$for;

    invoke-direct {v0}, Lfreemarker/template/utility/DateUtil$for;-><init>()V

    iput-object v0, p0, Lfreemarker/core/d0;->g1:Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/core/d0;->g1:Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;

    return-object v0
.end method

.method public L2(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/d0;->t2(Ljava/lang/String;Ljava/lang/String;Z)Lfreemarker/template/static;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/core/d0;->K2(Lfreemarker/template/static;)V

    return-void
.end method

.method public O1()[Lfreemarker/core/b4;
    .locals 6

    .line 1
    iget v0, p0, Lfreemarker/core/d0;->Y0:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    iget-object v4, p0, Lfreemarker/core/d0;->X0:[Lfreemarker/core/b4;

    aget-object v4, v4, v2

    add-int/lit8 v5, v0, -0x1

    if-eq v2, v5, :cond_0

    .line 3
    invoke-virtual {v4}, Lfreemarker/core/b4;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_3
    new-array v2, v3, [Lfreemarker/core/b4;

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ge v1, v0, :cond_6

    .line 5
    iget-object v4, p0, Lfreemarker/core/d0;->X0:[Lfreemarker/core/b4;

    aget-object v4, v4, v1

    add-int/lit8 v5, v0, -0x1

    if-eq v1, v5, :cond_4

    .line 6
    invoke-virtual {v4}, Lfreemarker/core/b4;->h()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    add-int/lit8 v5, v3, -0x1

    .line 7
    aput-object v4, v2, v3

    move v3, v5

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-object v2
.end method

.method public O2(Lfreemarker/core/d0;Lfreemarker/core/x1;Ljava/util/List;Lfreemarker/core/h4;)Lfreemarker/template/TemplateModel;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/core/d0;",
            "Lfreemarker/core/x1;",
            "Ljava/util/List<",
            "+",
            "Lfreemarker/core/h0;",
            ">;",
            "Lfreemarker/core/h4;",
            ")",
            "Lfreemarker/template/TemplateModel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->q3(Lfreemarker/template/TemplateModel;)V

    .line 2
    invoke-virtual {p2}, Lfreemarker/core/x1;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lfreemarker/core/d0;->c2()Ljava/io/Writer;

    move-result-object v0

    .line 4
    :try_start_0
    sget-object v1, Lfreemarker/template/utility/break;->do:Lfreemarker/template/utility/break;

    invoke-virtual {p1, v1}, Lfreemarker/core/d0;->t3(Ljava/io/Writer;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v7, p4

    .line 5
    invoke-virtual/range {v2 .. v7}, Lfreemarker/core/d0;->P2(Lfreemarker/core/x1;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lfreemarker/core/h4;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->t3(Ljava/io/Writer;)V

    .line 7
    invoke-virtual {p1}, Lfreemarker/core/d0;->Q1()Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 8
    :try_start_1
    new-instance p3, Lfreemarker/template/TemplateException;

    const-string p4, "Unexpected exception during function execution"

    invoke-direct {p3, p4, p2, p1}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/d0;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_0
    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->t3(Ljava/io/Writer;)V

    .line 10
    throw p2

    .line 11
    :cond_0
    new-instance p2, Landroid/support/v4/nl2;

    const-string p3, "A macro cannot be called in an expression. (Functions can be.)"

    invoke-direct {p2, p1, p3}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;Ljava/lang/String;)V

    throw p2
.end method

.method public P0(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-static {}, Lfreemarker/ext/beans/try;->super()Lfreemarker/ext/beans/try;

    move-result-object v0

    invoke-virtual {p0, p1}, Lfreemarker/core/d0;->D2(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/try;->unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public P1()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->U0:Lfreemarker/template/do;

    invoke-virtual {v0}, Lfreemarker/template/do;->J1()Ljava/util/Set;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfreemarker/core/d0;->W0:Lfreemarker/template/TemplateHashModel;

    instance-of v2, v1, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lfreemarker/template/TemplateHashModelEx;

    invoke-interface {v1}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v1

    invoke-interface {v1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    .line 4
    :goto_0
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v2

    check-cast v2, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v2}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lfreemarker/core/d0;->n1:Lfreemarker/core/d0$this;

    invoke-virtual {v1}, Lfreemarker/template/native;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v1

    invoke-interface {v1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v2

    check-cast v2, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v2}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_1
    iget-object v1, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    invoke-virtual {v1}, Lfreemarker/template/native;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v1

    invoke-interface {v1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v2

    check-cast v2, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v2}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10
    :cond_2
    iget-object v1, p0, Lfreemarker/core/d0;->j1:Lfreemarker/core/x1$do;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1}, Lfreemarker/core/x1$do;->getLocalVariableNames()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_3
    iget-object v1, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v1}, Lfreemarker/core/v1;->new()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_4

    .line 14
    iget-object v2, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    invoke-virtual {v2, v1}, Lfreemarker/core/v1;->do(I)Lfreemarker/core/LocalContext;

    move-result-object v2

    .line 15
    invoke-interface {v2}, Lfreemarker/core/LocalContext;->getLocalVariableNames()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_4
    return-object v0
.end method

.method public P2(Lfreemarker/core/x1;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lfreemarker/core/h4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/core/x1;",
            "Ljava/util/Map;",
            "Ljava/util/List<",
            "+",
            "Lfreemarker/core/h0;",
            ">;",
            "Ljava/util/List;",
            "Lfreemarker/core/h4;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lfreemarker/core/d0;->Q2(Lfreemarker/core/x1;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lfreemarker/core/h4;)V

    return-void
.end method

.method public Q0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/t;->implements()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    invoke-interface {v0, p2}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/d0;->p3(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    return-void
.end method

.method public Q1()Lfreemarker/template/TemplateModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->s1:Lfreemarker/template/TemplateModel;

    return-object v0
.end method

.method public R1()Lfreemarker/core/v1;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    return-object v0
.end method

.method public R2(Lfreemarker/core/super$do;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/d0;->x1()Lfreemarker/core/x1$do;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    .line 3
    iget-object v2, v0, Lfreemarker/core/x1$do;->if:Lfreemarker/core/h4;

    .line 4
    instance-of v3, v2, Lfreemarker/core/b4;

    if-eqz v3, :cond_0

    check-cast v2, Lfreemarker/core/b4;

    .line 5
    invoke-virtual {v2}, Lfreemarker/core/b4;->finally()[Lfreemarker/core/b4;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_7

    .line 6
    iget-object v3, v0, Lfreemarker/core/x1$do;->case:Lfreemarker/core/x1$do;

    iput-object v3, p0, Lfreemarker/core/d0;->j1:Lfreemarker/core/x1$do;

    .line 7
    iget-object v3, v0, Lfreemarker/core/x1$do;->for:Lfreemarker/core/d0$this;

    iput-object v3, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    .line 8
    invoke-direct {p0}, Lfreemarker/core/d0;->T2()Z

    move-result v3

    .line 9
    invoke-virtual {p0}, Lfreemarker/core/t;->synchronized()Lfreemarker/core/t;

    move-result-object v4

    if-eqz v3, :cond_1

    .line 10
    iget-object v5, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    invoke-virtual {v5}, Lfreemarker/core/d0$this;->getTemplate()Lfreemarker/template/static;

    move-result-object v5

    invoke-virtual {p0, v5}, Lfreemarker/core/t;->z0(Lfreemarker/core/t;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v5, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    invoke-virtual {v5}, Lfreemarker/core/d0$this;->getTemplate()Lfreemarker/template/static;

    move-result-object v5

    iput-object v5, p0, Lfreemarker/core/d0;->p1:Lfreemarker/core/t;

    .line 12
    :goto_1
    iget-object v5, v0, Lfreemarker/core/x1$do;->try:Lfreemarker/core/v1;

    iput-object v5, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    .line 13
    iget-object v5, v0, Lfreemarker/core/x1$do;->new:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 14
    invoke-direct {p0, p1}, Lfreemarker/core/d0;->f3(Lfreemarker/core/LocalContext;)V

    .line 15
    :cond_2
    :try_start_0
    invoke-virtual {p0, v2}, Lfreemarker/core/d0;->A3([Lfreemarker/core/b4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object p1, v0, Lfreemarker/core/x1$do;->new:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 17
    iget-object p1, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    invoke-virtual {p1}, Lfreemarker/core/v1;->if()V

    .line 18
    :cond_3
    iput-object v0, p0, Lfreemarker/core/d0;->j1:Lfreemarker/core/x1$do;

    .line 19
    invoke-virtual {v0}, Lfreemarker/core/x1$do;->if()Lfreemarker/core/x1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/core/d0;->T1(Lfreemarker/core/x1;)Lfreemarker/core/d0$this;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    if-eqz v3, :cond_4

    .line 20
    invoke-virtual {p0, v4}, Lfreemarker/core/t;->z0(Lfreemarker/core/t;)V

    goto :goto_2

    .line 21
    :cond_4
    iput-object v4, p0, Lfreemarker/core/d0;->p1:Lfreemarker/core/t;

    .line 22
    :goto_2
    iput-object v1, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 23
    iget-object v2, v0, Lfreemarker/core/x1$do;->new:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 24
    iget-object v2, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    invoke-virtual {v2}, Lfreemarker/core/v1;->if()V

    .line 25
    :cond_5
    iput-object v0, p0, Lfreemarker/core/d0;->j1:Lfreemarker/core/x1$do;

    .line 26
    invoke-virtual {v0}, Lfreemarker/core/x1$do;->if()Lfreemarker/core/x1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/d0;->T1(Lfreemarker/core/x1;)Lfreemarker/core/d0$this;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    if-eqz v3, :cond_6

    .line 27
    invoke-virtual {p0, v4}, Lfreemarker/core/t;->z0(Lfreemarker/core/t;)V

    goto :goto_3

    .line 28
    :cond_6
    iput-object v4, p0, Lfreemarker/core/d0;->p1:Lfreemarker/core/t;

    .line 29
    :goto_3
    iput-object v1, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    .line 30
    throw p1

    :cond_7
    :goto_4
    return-void
.end method

.method public S1(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/d0;->b2(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    .line 2
    sget-object v0, Lfreemarker/core/y2;->do:Lfreemarker/core/y2;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public S2(Lfreemarker/template/TemplateNodeModel;Lfreemarker/template/TemplateSequenceModel;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->v1:Lfreemarker/template/TemplateSequenceModel;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lfreemarker/template/return;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lfreemarker/template/return;-><init>(I)V

    .line 3
    iget-object v1, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    invoke-virtual {v0, v1}, Lfreemarker/template/return;->add(Ljava/lang/Object;)V

    .line 4
    iput-object v0, p0, Lfreemarker/core/d0;->v1:Lfreemarker/template/TemplateSequenceModel;

    .line 5
    :cond_0
    iget v0, p0, Lfreemarker/core/d0;->w1:I

    .line 6
    iget-object v1, p0, Lfreemarker/core/d0;->x1:Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lfreemarker/core/d0;->y1:Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lfreemarker/core/d0;->v1:Lfreemarker/template/TemplateSequenceModel;

    .line 9
    iget-object v4, p0, Lfreemarker/core/d0;->u1:Lfreemarker/template/TemplateNodeModel;

    .line 10
    iput-object p1, p0, Lfreemarker/core/d0;->u1:Lfreemarker/template/TemplateNodeModel;

    if-eqz p2, :cond_1

    .line 11
    iput-object p2, p0, Lfreemarker/core/d0;->v1:Lfreemarker/template/TemplateSequenceModel;

    .line 12
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lfreemarker/core/d0;->Z1(Lfreemarker/template/TemplateNodeModel;)Lfreemarker/template/TemplateModel;

    move-result-object v5

    .line 13
    instance-of v6, v5, Lfreemarker/core/x1;

    if-eqz v6, :cond_2

    .line 14
    move-object v8, v5

    check-cast v8, Lfreemarker/core/x1;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lfreemarker/core/d0;->P2(Lfreemarker/core/x1;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lfreemarker/core/h4;)V

    goto :goto_0

    .line 15
    :cond_2
    instance-of v6, v5, Lfreemarker/template/TemplateTransformModel;

    if-eqz v6, :cond_3

    .line 16
    check-cast v5, Lfreemarker/template/TemplateTransformModel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v5, p1}, Lfreemarker/core/d0;->D3([Lfreemarker/core/b4;Lfreemarker/template/TemplateTransformModel;Ljava/util/Map;)V

    goto :goto_0

    .line 17
    :cond_3
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModel;->getNodeType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string v6, "text"

    .line 18
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    instance-of v6, p1, Lfreemarker/template/TemplateScalarModel;

    if-eqz v6, :cond_4

    .line 19
    iget-object p2, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v6, "document"

    .line 20
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 21
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/d0;->g3(Lfreemarker/template/TemplateNodeModel;Lfreemarker/template/TemplateSequenceModel;)V

    goto :goto_0

    :cond_5
    const-string p2, "pi"

    .line 22
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "comment"

    .line 23
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "document_type"

    .line 24
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_0

    .line 25
    :cond_6
    new-instance p2, Landroid/support/v4/nl2;

    .line 26
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModel;->getNodeNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6, v5}, Lfreemarker/core/d0;->Y2(Lfreemarker/template/TemplateNodeModel;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_7
    :goto_0
    iput-object v4, p0, Lfreemarker/core/d0;->u1:Lfreemarker/template/TemplateNodeModel;

    .line 28
    iput v0, p0, Lfreemarker/core/d0;->w1:I

    .line 29
    iput-object v1, p0, Lfreemarker/core/d0;->x1:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lfreemarker/core/d0;->y1:Ljava/lang/String;

    .line 31
    iput-object v3, p0, Lfreemarker/core/d0;->v1:Lfreemarker/template/TemplateSequenceModel;

    return-void

    .line 32
    :cond_8
    :try_start_1
    new-instance p2, Landroid/support/v4/nl2;

    .line 33
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModel;->getNodeNamespace()Ljava/lang/String;

    move-result-object v5

    const-string v6, "default"

    invoke-direct {p0, p1, v5, v6}, Lfreemarker/core/d0;->Y2(Lfreemarker/template/TemplateNodeModel;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 34
    iput-object v4, p0, Lfreemarker/core/d0;->u1:Lfreemarker/template/TemplateNodeModel;

    .line 35
    iput v0, p0, Lfreemarker/core/d0;->w1:I

    .line 36
    iput-object v1, p0, Lfreemarker/core/d0;->x1:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lfreemarker/core/d0;->y1:Ljava/lang/String;

    .line 38
    iput-object v3, p0, Lfreemarker/core/d0;->v1:Lfreemarker/template/TemplateSequenceModel;

    .line 39
    throw p1
.end method

.method public T1(Lfreemarker/core/x1;)Lfreemarker/core/d0$this;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->t1:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/core/d0$this;

    return-object p1
.end method

.method public U1()Lfreemarker/core/d0$this;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->l1:Lfreemarker/core/d0$this;

    return-object v0
.end method

.method public U2()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->U0:Lfreemarker/template/do;

    invoke-virtual {v0}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/we2;->intValue()I

    move-result v0

    sget v1, Landroid/support/v4/ul2;->else:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public V1()Lfreemarker/template/static;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->l1:Lfreemarker/core/d0$this;

    invoke-virtual {v0}, Lfreemarker/core/d0$this;->getTemplate()Lfreemarker/template/static;

    move-result-object v0

    return-object v0
.end method

.method public V2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/d0;->q1:Z

    return v0
.end method

.method public W1(Ljava/lang/String;)Lfreemarker/core/d0$this;
    .locals 1

    const-string v0, "/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/d0;->o1:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/core/d0$this;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public W2()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->e1:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/t;->a()Ljava/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/t;->a()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/t;->h()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/d0;->e1:Ljava/lang/Boolean;

    .line 5
    :cond_2
    iget-object v0, p0, Lfreemarker/core/d0;->e1:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public X1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    invoke-virtual {v0}, Lfreemarker/core/d0$this;->getTemplate()Lfreemarker/template/static;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfreemarker/template/static;->i1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Z1(Lfreemarker/template/TemplateNodeModel;)Lfreemarker/template/TemplateModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModel;->getNodeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModel;->getNodeNamespace()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lfreemarker/core/d0;->a2(Ljava/lang/String;Ljava/lang/String;I)Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModel;->getNodeType()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "default"

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2}, Lfreemarker/core/d0;->a2(Ljava/lang/String;Ljava/lang/String;I)Lfreemarker/template/TemplateModel;

    move-result-object v0

    :cond_1
    return-object v0

    .line 5
    :cond_2
    new-instance p1, Landroid/support/v4/nl2;

    const-string v0, "Node name is null."

    invoke-direct {p1, p0, v0}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;Ljava/lang/String;)V

    throw p1
.end method

.method public a1(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0, p2, p0}, Lfreemarker/core/f0;->break(Lfreemarker/template/TemplateModel;ILfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Z

    move-result p1

    return p1
.end method

.method public a3(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/d0;->O1()[Lfreemarker/core/b4;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lfreemarker/core/d0;->b3([Lfreemarker/core/b4;ZLjava/io/Writer;)V

    .line 2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public b1(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0, p2, p0}, Lfreemarker/core/f0;->class(Lfreemarker/template/TemplateModel;ILfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Z

    move-result p1

    return p1
.end method

.method public c1(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, v0, p2, p0}, Lfreemarker/core/f0;->break(Lfreemarker/template/TemplateModel;ILfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Z

    move-result p1

    return p1
.end method

.method public c2()Ljava/io/Writer;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    return-object v0
.end method

.method public d1(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-static {p1, v0, p2, p0}, Lfreemarker/core/f0;->break(Lfreemarker/template/TemplateModel;ILfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Z

    move-result p1

    return p1
.end method

.method public d2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    invoke-virtual {v0}, Lfreemarker/core/d0$this;->getTemplate()Lfreemarker/template/static;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfreemarker/template/static;->m1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d3()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/core/d0;->D1:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    invoke-direct {p0}, Lfreemarker/core/d0;->g1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {p0, p0}, Lfreemarker/core/t;->case(Lfreemarker/core/d0;)V

    .line 5
    invoke-virtual {p0}, Lfreemarker/core/d0;->e2()Lfreemarker/template/static;

    move-result-object v2

    invoke-virtual {v2}, Lfreemarker/template/static;->o1()Lfreemarker/core/b4;

    move-result-object v2

    invoke-virtual {p0, v2}, Lfreemarker/core/d0;->y3(Lfreemarker/core/b4;)V

    .line 6
    invoke-virtual {p0}, Lfreemarker/core/t;->this()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lfreemarker/core/d0;->g1()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_3
    invoke-direct {p0}, Lfreemarker/core/d0;->g1()V

    .line 11
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 12
    sget-object v2, Lfreemarker/core/d0;->D1:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 13
    throw v0
.end method

.method public e1(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-static {p1, v0, p2, p0}, Lfreemarker/core/f0;->break(Lfreemarker/template/TemplateModel;ILfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Z

    move-result p1

    return p1
.end method

.method public e2()Lfreemarker/template/static;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/t;->synchronized()Lfreemarker/core/t;

    move-result-object v0

    check-cast v0, Lfreemarker/template/static;

    return-object v0
.end method

.method public f1(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 1
    invoke-static {p1, v0, p2, p0}, Lfreemarker/core/f0;->break(Lfreemarker/template/TemplateModel;ILfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Z

    move-result p1

    return p1
.end method

.method public f2()Lfreemarker/template/static;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->p1:Lfreemarker/core/t;

    check-cast v0, Lfreemarker/template/static;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/d0;->e2()Lfreemarker/template/static;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public g2(ILjava/lang/Class;)Lfreemarker/core/z3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;)",
            "Lfreemarker/core/z3;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lfreemarker/core/d0;->X2(Ljava/lang/Class;)Z

    move-result p2

    .line 2
    invoke-direct {p0, p2}, Lfreemarker/core/d0;->w3(Z)Z

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lfreemarker/core/d0;->i2(IZZ)Lfreemarker/core/z3;

    move-result-object p1

    return-object p1
.end method

.method public g3(Lfreemarker/template/TemplateNodeModel;Lfreemarker/template/TemplateSequenceModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/d0;->B1()Lfreemarker/template/TemplateNodeModel;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Landroid/support/v4/vl2;

    const-string p2, "The target node of recursion is missing or null."

    invoke-direct {p1, p2}, Landroid/support/v4/vl2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModel;->getChildNodes()Lfreemarker/template/TemplateSequenceModel;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-interface {p1}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 5
    invoke-interface {p1, v1}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v2

    check-cast v2, Lfreemarker/template/TemplateNodeModel;

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {p0, v2, p2}, Lfreemarker/core/d0;->S2(Lfreemarker/template/TemplateNodeModel;Lfreemarker/template/TemplateSequenceModel;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public h1()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lfreemarker/core/d0;->s1:Lfreemarker/template/TemplateModel;

    return-void
.end method

.method public h2(ILjava/lang/Class;Lfreemarker/core/h0;Z)Lfreemarker/core/z3;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;",
            "Lfreemarker/core/h0;",
            "Z)",
            "Lfreemarker/core/z3;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/d0;->g2(ILjava/lang/Class;)Lfreemarker/core/z3;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/xb2; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/support/v4/p52; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    const-string p3, "???"

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    move-object p1, p3

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/t;->finally()Ljava/lang/String;

    move-result-object p3

    const-string p1, "datetime_format"

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/t;->extends()Ljava/lang/String;

    move-result-object p3

    const-string p1, "date_format"

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lfreemarker/core/t;->g()Ljava/lang/String;

    move-result-object p3

    const-string p1, "time_format"

    :goto_0
    move-object v7, p3

    move-object p3, p1

    move-object p1, v7

    .line 5
    :goto_1
    new-instance v3, Lfreemarker/core/z4;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "The value of the \""

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object p3, v4, v2

    const-string p3, "\" FreeMarker configuration setting is a malformed date/time/datetime format string: "

    aput-object p3, v4, v1

    new-instance p3, Landroid/support/v4/fl2;

    invoke-direct {p3, p1}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object p3, v4, v0

    const/4 p1, 0x4

    const-string p3, ". Reason given: "

    aput-object p3, v4, p1

    const/4 p1, 0x5

    .line 6
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, p1

    invoke-direct {v3, v4}, Lfreemarker/core/z4;-><init>([Ljava/lang/Object;)V

    if-eqz p4, :cond_3

    .line 7
    new-instance p1, Landroid/support/v4/vl2;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object v3, p3, v6

    invoke-direct {p1, p2, p3}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance p1, Landroid/support/v4/nl2;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object v3, p3, v6

    invoke-direct {p1, p2, p3}, Landroid/support/v4/nl2;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_2
    throw p1

    :catch_1
    move-exception p1

    .line 8
    invoke-static {p3, p1}, Lfreemarker/core/b5;->import(Lfreemarker/core/h0;Landroid/support/v4/xb2;)Landroid/support/v4/vl2;

    move-result-object p1

    throw p1
.end method

.method public h3(Lfreemarker/core/b4;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 3
    iput-object v1, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    .line 4
    invoke-virtual {p0, p1}, Lfreemarker/core/d0;->y3(Lfreemarker/core/b4;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput-object v0, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    .line 7
    throw p1
.end method

.method public i1(Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/d0$goto;

    invoke-direct {v0, p2, p3}, Lfreemarker/core/d0$goto;-><init>(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    invoke-direct {p0, v0}, Lfreemarker/core/d0;->f3(Lfreemarker/core/LocalContext;)V

    .line 2
    :try_start_0
    invoke-virtual {p1, p0}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p2, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    invoke-virtual {p2}, Lfreemarker/core/v1;->if()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lfreemarker/core/d0;->k1:Lfreemarker/core/v1;

    invoke-virtual {p2}, Lfreemarker/core/v1;->if()V

    .line 4
    throw p1
.end method

.method public i3(Lfreemarker/core/b4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->X0:[Lfreemarker/core/b4;

    iget v1, p0, Lfreemarker/core/d0;->Y0:I

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public j1()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->x1:Ljava/lang/String;

    iget-object v1, p0, Lfreemarker/core/d0;->y1:Ljava/lang/String;

    iget v2, p0, Lfreemarker/core/d0;->w1:I

    invoke-direct {p0, v0, v1, v2}, Lfreemarker/core/d0;->a2(Ljava/lang/String;Ljava/lang/String;I)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lfreemarker/core/x1;

    if-eqz v1, :cond_0

    .line 3
    move-object v3, v0

    check-cast v3, Lfreemarker/core/x1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lfreemarker/core/d0;->P2(Lfreemarker/core/x1;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lfreemarker/core/h4;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Lfreemarker/template/TemplateTransformModel;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lfreemarker/template/TemplateTransformModel;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lfreemarker/core/d0;->D3([Lfreemarker/core/b4;Lfreemarker/template/TemplateTransformModel;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public j2(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/h0;Z)Lfreemarker/core/z3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lfreemarker/core/f0;->while(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/h0;)Ljava/util/Date;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, v0, p2, p3}, Lfreemarker/core/d0;->h2(ILjava/lang/Class;Lfreemarker/core/h0;Z)Lfreemarker/core/z3;

    move-result-object p1

    return-object p1
.end method

.method public k1()Lfreemarker/core/d1$do;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/d0;->l1(Ljava/lang/String;)Lfreemarker/core/d1$do;

    move-result-object v0

    return-object v0
.end method

.method public k2(Ljava/lang/String;ILjava/lang/Class;)Lfreemarker/core/z3;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;)",
            "Lfreemarker/core/z3;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lfreemarker/core/d0;->X2(Ljava/lang/Class;)Z

    move-result v4

    .line 2
    invoke-direct {p0, v4}, Lfreemarker/core/d0;->w3(Z)Z

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Lfreemarker/core/d0;->p2(Ljava/lang/String;IZZZ)Lfreemarker/core/z3;

    move-result-object p1

    return-object p1
.end method

.method public k3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/fx0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->U0:Lfreemarker/template/do;

    invoke-virtual {v0}, Lfreemarker/template/do;->Y1()Lfreemarker/cache/throws;

    move-result-object v0

    invoke-static {v0, p1}, Lfreemarker/cache/private;->if(Lfreemarker/cache/throws;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l2(Ljava/lang/String;ILjava/lang/Class;Lfreemarker/core/h0;Lfreemarker/core/h0;Z)Lfreemarker/core/z3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;",
            "Lfreemarker/core/h0;",
            "Lfreemarker/core/h0;",
            "Z)",
            "Lfreemarker/core/z3;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/d0;->k2(Ljava/lang/String;ILjava/lang/Class;)Lfreemarker/core/z3;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/xb2; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/support/v4/p52; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 2
    new-instance p3, Lfreemarker/core/z4;

    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/Object;

    const-string v0, "Can\'t create date/time/datetime format based on format string "

    const/4 v1, 0x0

    aput-object v0, p4, v1

    new-instance v0, Landroid/support/v4/fl2;

    invoke-direct {v0, p1}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-object v0, p4, p1

    const/4 v0, 0x2

    const-string v2, ". Reason given: "

    aput-object v2, p4, v0

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v0

    invoke-direct {p3, p4}, Lfreemarker/core/z4;-><init>([Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p3, p5}, Lfreemarker/core/z4;->if(Lfreemarker/core/h0;)Lfreemarker/core/z4;

    move-result-object p3

    if-eqz p6, :cond_0

    .line 5
    new-instance p4, Landroid/support/v4/vl2;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p3, p1, v1

    invoke-direct {p4, p2, p1}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p4, Landroid/support/v4/nl2;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p3, p1, v1

    invoke-direct {p4, p2, p1}, Landroid/support/v4/nl2;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    throw p4

    :catch_1
    move-exception p1

    .line 6
    invoke-static {p4, p1}, Lfreemarker/core/b5;->import(Lfreemarker/core/h0;Landroid/support/v4/xb2;)Landroid/support/v4/vl2;

    move-result-object p1

    throw p1
.end method

.method public m1(Ljava/lang/String;)Lfreemarker/core/d1$do;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/d0;->l1(Ljava/lang/String;)Lfreemarker/core/d1$do;

    move-result-object p1

    return-object p1
.end method

.method public m2(Ljava/lang/String;ILjava/lang/Class;Ljava/util/Locale;)Lfreemarker/core/z3;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;",
            "Ljava/util/Locale;",
            ")",
            "Lfreemarker/core/z3;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lfreemarker/core/d0;->X2(Ljava/lang/Class;)Z

    move-result v5

    .line 2
    invoke-direct {p0, v5}, Lfreemarker/core/d0;->w3(Z)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/t;->a()Ljava/util/TimeZone;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/t;->h()Ljava/util/TimeZone;

    move-result-object p3

    :goto_0
    move-object v4, p3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    .line 4
    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/d0;->o2(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;Z)Lfreemarker/core/z3;

    move-result-object p1

    return-object p1
.end method

.method public m3(Lfreemarker/template/TemplateNodeModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/d0;->u1:Lfreemarker/template/TemplateNodeModel;

    return-void
.end method

.method public n1(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/h0;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/d0;->j2(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/h0;Z)Lfreemarker/core/z3;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Lfreemarker/core/z3;->for(Lfreemarker/template/TemplateDateModel;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/core/f0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/p52; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {v0, p2, p1, p3}, Lfreemarker/core/b5;->throw(Lfreemarker/core/z3;Lfreemarker/core/h0;Landroid/support/v4/p52;Z)Lfreemarker/template/TemplateException;

    move-result-object p1

    throw p1
.end method

.method public n2(Ljava/lang/String;ILjava/lang/Class;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/TimeZone;)Lfreemarker/core/z3;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/util/TimeZone;",
            "Ljava/util/TimeZone;",
            ")",
            "Lfreemarker/core/z3;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lfreemarker/core/d0;->X2(Ljava/lang/Class;)Z

    move-result v5

    .line 2
    invoke-direct {p0, v5}, Lfreemarker/core/d0;->w3(Z)Z

    move-result p3

    if-eqz p3, :cond_0

    move-object v4, p6

    goto :goto_0

    :cond_0
    move-object v4, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/d0;->o2(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;Z)Lfreemarker/core/z3;

    move-result-object p1

    return-object p1
.end method

.method public n3(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->C1:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 3
    iput-object v0, p0, Lfreemarker/core/d0;->C1:Ljava/util/IdentityHashMap;

    .line 4
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o1(Lfreemarker/template/TemplateDateModel;Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0;Z)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p3}, Lfreemarker/core/f0;->while(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/h0;)Ljava/util/Date;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 3
    invoke-virtual/range {v1 .. v7}, Lfreemarker/core/d0;->l2(Ljava/lang/String;ILjava/lang/Class;Lfreemarker/core/h0;Lfreemarker/core/h0;Z)Lfreemarker/core/z3;

    move-result-object p2

    .line 4
    :try_start_0
    invoke-virtual {p2, p1}, Lfreemarker/core/z3;->for(Lfreemarker/template/TemplateDateModel;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/core/f0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/p52; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p2, p3, p1, p5}, Lfreemarker/core/b5;->throw(Lfreemarker/core/z3;Lfreemarker/core/h0;Landroid/support/v4/p52;Z)Lfreemarker/template/TemplateException;

    move-result-object p1

    throw p1
.end method

.method public o2(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;Z)Lfreemarker/core/z3;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v0

    .line 2
    invoke-virtual {p3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/t;->h()Ljava/util/TimeZone;

    move-result-object v0

    .line 4
    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/t;->a()Ljava/util/TimeZone;

    move-result-object v0

    .line 6
    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v8, p5

    .line 7
    invoke-direct/range {v4 .. v9}, Lfreemarker/core/d0;->p2(Ljava/lang/String;IZZZ)Lfreemarker/core/z3;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    invoke-direct/range {p0 .. p5}, Lfreemarker/core/d0;->r2(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;Z)Lfreemarker/core/z3;

    move-result-object p1

    return-object p1
.end method

.method public o3(Z)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/d0;->B1:Z

    .line 2
    iput-boolean p1, p0, Lfreemarker/core/d0;->B1:Z

    return v0
.end method

.method public p0(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/t;->extends()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-super {p0, p1}, Lfreemarker/core/t;->p0(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lfreemarker/core/d0;->c1:[Lfreemarker/core/z3;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lfreemarker/core/d0;->c1:[Lfreemarker/core/z3;

    add-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p1(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/h0;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p3}, Lfreemarker/core/d0;->w2(Lfreemarker/core/h0;Z)Lfreemarker/core/f4;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lfreemarker/core/d0;->q1(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/f4;Lfreemarker/core/h0;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public p3(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->n1:Lfreemarker/core/d0$this;

    invoke-virtual {v0, p1, p2}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public q0(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/t;->finally()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-super {p0, p1}, Lfreemarker/core/t;->q0(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lfreemarker/core/d0;->c1:[Lfreemarker/core/z3;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lfreemarker/core/d0;->c1:[Lfreemarker/core/z3;

    add-int/lit8 v1, p1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q1(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/f4;Lfreemarker/core/h0;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2, p1}, Lfreemarker/core/f4;->for(Lfreemarker/template/TemplateNumberModel;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/core/f0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/p52; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p2, p3, p1, p4}, Lfreemarker/core/b5;->while(Lfreemarker/core/f4;Lfreemarker/core/h0;Landroid/support/v4/p52;Z)Lfreemarker/template/TemplateException;

    move-result-object p1

    throw p1
.end method

.method public q3(Lfreemarker/template/TemplateModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/d0;->s1:Lfreemarker/template/TemplateModel;

    return-void
.end method

.method public r1(Ljava/lang/Number;Lfreemarker/core/const;Lfreemarker/core/h0;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;,
            Landroid/support/v4/nl2;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2, p1}, Lfreemarker/core/const;->case(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/ob2; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Landroid/support/v4/nl2;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to format number with "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/support/v4/fl2;

    .line 3
    invoke-virtual {p2}, Landroid/support/v4/o52;->do()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 p2, 0x2

    const-string v2, ": "

    aput-object v2, v1, p2

    const/4 p2, 0x3

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    invoke-direct {v0, p3, p1, p0, v1}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;Ljava/lang/Throwable;Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw v0
.end method

.method public r3(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->j1:Lfreemarker/core/x1$do;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lfreemarker/core/x1$do;->new(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not executing macro body"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s1()Ljava/text/NumberFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->f1:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lfreemarker/core/d0;->G1:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    iput-object v0, p0, Lfreemarker/core/d0;->f1:Ljava/text/NumberFormat;

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/core/d0;->f1:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public s2(Ljava/lang/String;)Lfreemarker/template/static;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lfreemarker/core/d0;->t2(Ljava/lang/String;Ljava/lang/String;Z)Lfreemarker/template/static;

    move-result-object p1

    return-object p1
.end method

.method public t0(Ljava/util/Locale;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v0

    .line 2
    invoke-super {p0, p1}, Lfreemarker/core/t;->t0(Ljava/util/Locale;)V

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lfreemarker/core/d0;->b1:Ljava/util/Map;

    .line 5
    iget-object v0, p0, Lfreemarker/core/d0;->a1:Lfreemarker/core/f4;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfreemarker/core/f4;->new()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iput-object p1, p0, Lfreemarker/core/d0;->a1:Lfreemarker/core/f4;

    .line 7
    :cond_0
    iget-object v0, p0, Lfreemarker/core/d0;->c1:[Lfreemarker/core/z3;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    .line 8
    iget-object v1, p0, Lfreemarker/core/d0;->c1:[Lfreemarker/core/z3;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Lfreemarker/core/z3;->new()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lfreemarker/core/d0;->c1:[Lfreemarker/core/z3;

    aput-object p1, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iput-object p1, p0, Lfreemarker/core/d0;->d1:[Ljava/util/HashMap;

    .line 12
    iput-object p1, p0, Lfreemarker/core/d0;->h1:Ljava/text/Collator;

    :cond_3
    return-void
.end method

.method public t1()Ljava/text/Collator;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->h1:Ljava/text/Collator;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/d0;->h1:Ljava/text/Collator;

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/core/d0;->h1:Ljava/text/Collator;

    return-object v0
.end method

.method public t2(Ljava/lang/String;Ljava/lang/String;Z)Lfreemarker/template/static;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lfreemarker/core/d0;->u2(Ljava/lang/String;Ljava/lang/String;ZZ)Lfreemarker/template/static;

    move-result-object p1

    return-object p1
.end method

.method public t3(Ljava/io/Writer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/d0;->i1:Ljava/io/Writer;

    return-void
.end method

.method public u1()Lfreemarker/template/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->U0:Lfreemarker/template/do;

    return-object v0
.end method

.method public u2(Ljava/lang/String;Ljava/lang/String;ZZ)Lfreemarker/template/static;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->U0:Lfreemarker/template/do;

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0}, Lfreemarker/core/d0;->M1()Ljava/lang/Object;

    move-result-object v3

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/d0;->N1()Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v4, p2

    move-object v1, p1

    move v5, p3

    move v6, p4

    .line 4
    invoke-virtual/range {v0 .. v6}, Lfreemarker/template/do;->R1(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/static;

    move-result-object p1

    return-object p1
.end method

.method public u3(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    invoke-virtual {v0, p1, p2}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public v1()Lfreemarker/core/DirectiveCallPlace;
    .locals 5

    .line 1
    iget v0, p0, Lfreemarker/core/d0;->Y0:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v2, p0, Lfreemarker/core/d0;->X0:[Lfreemarker/core/b4;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, v2, v3

    .line 3
    instance-of v4, v3, Lfreemarker/core/s4;

    if-eqz v4, :cond_1

    check-cast v3, Lfreemarker/core/s4;

    return-object v3

    .line 4
    :cond_1
    instance-of v3, v3, Lfreemarker/core/x1;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    add-int/lit8 v0, v0, -0x2

    aget-object v3, v2, v0

    instance-of v3, v3, Lfreemarker/core/s4;

    if-eqz v3, :cond_2

    .line 5
    aget-object v0, v2, v0

    check-cast v0, Lfreemarker/core/s4;

    return-object v0

    :cond_2
    return-object v1
.end method

.method public v2()Lfreemarker/core/f4;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->a1:Lfreemarker/core/f4;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/t;->transient()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lfreemarker/core/d0;->A2(Ljava/lang/String;Z)Lfreemarker/core/f4;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lfreemarker/core/d0;->a1:Lfreemarker/core/f4;

    :cond_0
    return-object v0
.end method

.method public v3(Ljava/lang/Class;)Z
    .locals 1

    .line 1
    const-class v0, Ljava/util/Date;

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/d0;->W2()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lfreemarker/core/d0;->X2(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public w0(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/core/t;->w0(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lfreemarker/core/d0;->a1:Lfreemarker/core/f4;

    return-void
.end method

.method public w2(Lfreemarker/core/h0;Z)Lfreemarker/core/f4;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/d0;->v2()Lfreemarker/core/f4;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/p52; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lfreemarker/core/z4;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Failed to get number format object for the current number format string, "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Landroid/support/v4/fl2;

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/t;->transient()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ": "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lfreemarker/core/z4;-><init>([Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v1, p1}, Lfreemarker/core/z4;->if(Lfreemarker/core/h0;)Lfreemarker/core/z4;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Landroid/support/v4/vl2;

    invoke-direct {p2, v0, p0, p1}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Lfreemarker/core/z4;)V

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/support/v4/nl2;

    invoke-direct {p2, v0, p0, p1}, Landroid/support/v4/nl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Lfreemarker/core/z4;)V

    :goto_0
    throw p2
.end method

.method public x1()Lfreemarker/core/x1$do;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->j1:Lfreemarker/core/x1$do;

    return-object v0
.end method

.method public x2(Ljava/lang/String;)Lfreemarker/core/f4;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lfreemarker/core/d0;->A2(Ljava/lang/String;Z)Lfreemarker/core/f4;

    move-result-object p1

    return-object p1
.end method

.method public x3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/fx0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/t;->y()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/d0;->U0:Lfreemarker/template/do;

    invoke-virtual {v0}, Lfreemarker/template/do;->Y1()Lfreemarker/cache/throws;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lfreemarker/cache/private;->for(Lfreemarker/cache/throws;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public y0(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lfreemarker/core/d0;->A1:Z

    .line 2
    invoke-super {p0, p1}, Lfreemarker/core/t;->y0(Ljava/lang/String;)V

    return-void
.end method

.method public y1()Lfreemarker/core/d0$this;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->m1:Lfreemarker/core/d0$this;

    return-object v0
.end method

.method public y2(Ljava/lang/String;Lfreemarker/core/h0;Z)Lfreemarker/core/f4;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lfreemarker/core/d0;->x2(Ljava/lang/String;)Lfreemarker/core/f4;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/p52; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lfreemarker/core/z4;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Failed to get number format object for the "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Landroid/support/v4/fl2;

    invoke-direct {v4, p1}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v4, v2, v3

    const/4 p1, 0x2

    const-string v3, " number format string: "

    aput-object v3, v2, p1

    const/4 p1, 0x3

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-direct {v1, v2}, Lfreemarker/core/z4;-><init>([Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v1, p2}, Lfreemarker/core/z4;->if(Lfreemarker/core/h0;)Lfreemarker/core/z4;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 5
    new-instance p2, Landroid/support/v4/vl2;

    invoke-direct {p2, v0, p0, p1}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Lfreemarker/core/z4;)V

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/support/v4/nl2;

    invoke-direct {p2, v0, p0, p1}, Landroid/support/v4/nl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Lfreemarker/core/z4;)V

    :goto_0
    throw p2
.end method

.method public y3(Lfreemarker/core/b4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/d0;->e3(Lfreemarker/core/b4;)V

    .line 2
    :try_start_0
    invoke-virtual {p1, p0}, Lfreemarker/core/b4;->native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0, v2}, Lfreemarker/core/d0;->y3(Lfreemarker/core/b4;)V
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    invoke-direct {p0}, Lfreemarker/core/d0;->c3()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 6
    :try_start_1
    invoke-direct {p0, p1}, Lfreemarker/core/d0;->E2(Lfreemarker/template/TemplateException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 7
    :goto_3
    invoke-direct {p0}, Lfreemarker/core/d0;->c3()V

    .line 8
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public z1()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0;->Z0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/d0;->Z0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/nl2;

    const-string v1, ".error is not available outside of a #recover block"

    invoke-direct {v0, p0, v1}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;Ljava/lang/String;)V

    throw v0
.end method

.method public z2(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/core/f4;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lfreemarker/core/d0;->x2(Ljava/lang/String;)Lfreemarker/core/f4;

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lfreemarker/core/d0;->B2(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/core/f4;

    move-result-object p1

    return-object p1
.end method

.method public z3(Lfreemarker/core/b4;Lfreemarker/template/TemplateDirectiveModel;Ljava/util/Map;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lfreemarker/core/b4;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    invoke-virtual {p0, v0, p2, p3, p4}, Lfreemarker/core/d0;->B3([Lfreemarker/core/b4;Lfreemarker/template/TemplateDirectiveModel;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method
