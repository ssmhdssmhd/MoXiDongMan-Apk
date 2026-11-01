.class public final Landroid/support/v4/h52;
.super Lfreemarker/core/t;
.source "SourceFile"

# interfaces
.implements Lfreemarker/core/ParserConfiguration;


# instance fields
.field private U0:Z

.field private V0:Ljava/lang/Integer;

.field private W0:Ljava/lang/Integer;

.field private X0:Ljava/lang/Integer;

.field private Y0:Ljava/lang/Boolean;

.field private Z0:Ljava/lang/Boolean;

.field private a1:Ljava/lang/Integer;

.field private b1:Ljava/lang/Boolean;

.field private c1:Landroid/support/v4/e91;

.field private d1:Ljava/lang/String;

.field private e1:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lfreemarker/template/do;->f1()Lfreemarker/template/do;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/t;-><init>(Lfreemarker/core/t;)V

    return-void
.end method

.method private Q0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/h52;->U0:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The TemplateConfiguration wasn\'t associated with a Configuration yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private S0()Lfreemarker/template/do;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/h52;->Q0()V

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/t;->synchronized()Lfreemarker/core/t;

    move-result-object v0

    check-cast v0, Lfreemarker/template/do;

    return-object v0
.end method

.method private U0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/t;->r()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/t;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/t;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lfreemarker/core/t;->v()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lfreemarker/core/t;->w()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lfreemarker/core/t;->x()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lfreemarker/core/t;->z()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lfreemarker/core/t;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lfreemarker/core/t;->C()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lfreemarker/core/t;->D()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p0}, Lfreemarker/core/t;->E()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lfreemarker/core/t;->G()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    invoke-virtual {p0}, Lfreemarker/core/t;->F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lfreemarker/core/t;->H()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    invoke-virtual {p0}, Lfreemarker/core/t;->I()Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    invoke-virtual {p0}, Lfreemarker/core/t;->U()Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p0}, Lfreemarker/core/t;->J()Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    invoke-virtual {p0}, Lfreemarker/core/t;->S()Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    invoke-virtual {p0}, Lfreemarker/core/t;->K()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    invoke-virtual {p0}, Lfreemarker/core/t;->L()Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    invoke-virtual {p0}, Lfreemarker/core/t;->M()Z

    move-result v0

    if-nez v0, :cond_1

    .line 22
    invoke-virtual {p0}, Lfreemarker/core/t;->O()Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    invoke-virtual {p0}, Lfreemarker/core/t;->N()Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    invoke-virtual {p0}, Lfreemarker/core/t;->P()Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    invoke-virtual {p0}, Lfreemarker/core/t;->t()Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    invoke-virtual {p0}, Lfreemarker/core/t;->Q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    invoke-virtual {p0}, Lfreemarker/core/t;->R()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    invoke-virtual {p0}, Lfreemarker/core/t;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private g1(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    .line 1
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p2

    .line 2
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    .line 3
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private h1(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;
    .locals 2

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    .line 1
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    return-object p2

    .line 2
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    return-object p1

    .line 3
    :cond_3
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p3, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 4
    invoke-virtual {p3, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 5
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-virtual {p3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_4
    invoke-virtual {p3, p2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    return-object p3
.end method


# virtual methods
.method public F0(Z)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting strictBeanModels on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/support/v4/h52;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " level isn\'t supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public P0(Lfreemarker/template/static;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/support/v4/h52;->S0()Lfreemarker/template/do;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lfreemarker/template/static;->b1()Lfreemarker/template/do;

    move-result-object v1

    if-ne v1, v0, :cond_1d

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/t;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lfreemarker/core/t;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lfreemarker/core/t;->q()Z

    move-result v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->c0(Z)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/t;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lfreemarker/core/t;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lfreemarker/core/t;->getArithmeticEngine()Lfreemarker/core/else;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->d0(Lfreemarker/core/else;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/t;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lfreemarker/core/t;->u()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lfreemarker/core/t;->this()Z

    move-result v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->f0(Z)V

    .line 9
    :cond_2
    invoke-virtual {p0}, Lfreemarker/core/t;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lfreemarker/core/t;->x()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    invoke-virtual {p0}, Lfreemarker/core/t;->final()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->i0(Ljava/lang/String;)V

    .line 11
    :cond_3
    invoke-virtual {p0}, Lfreemarker/core/t;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lfreemarker/core/t;->z()Z

    move-result v0

    if-nez v0, :cond_4

    .line 12
    invoke-virtual {p0}, Lfreemarker/core/t;->super()I

    move-result v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->k0(I)V

    .line 13
    :cond_4
    invoke-virtual {p0}, Lfreemarker/core/t;->B()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p0}, Lfreemarker/core/t;->return()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/core/t;->static()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/h52;->h1(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lfreemarker/core/t;->n0(Ljava/util/Map;)V

    .line 16
    :cond_5
    invoke-virtual {p0}, Lfreemarker/core/t;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {p0}, Lfreemarker/core/t;->throws()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/core/t;->default()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/h52;->h1(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lfreemarker/core/t;->o0(Ljava/util/Map;)V

    .line 19
    :cond_6
    invoke-virtual {p0}, Lfreemarker/core/t;->D()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lfreemarker/core/t;->D()Z

    move-result v0

    if-nez v0, :cond_7

    .line 20
    invoke-virtual {p0}, Lfreemarker/core/t;->extends()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->p0(Ljava/lang/String;)V

    .line 21
    :cond_7
    invoke-virtual {p0}, Lfreemarker/core/t;->E()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lfreemarker/core/t;->E()Z

    move-result v0

    if-nez v0, :cond_8

    .line 22
    invoke-virtual {p0}, Lfreemarker/core/t;->finally()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->q0(Ljava/lang/String;)V

    .line 23
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/h52;->W0()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lfreemarker/template/static;->e1()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 24
    invoke-virtual {p0}, Landroid/support/v4/h52;->R0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/template/static;->y1(Ljava/lang/String;)V

    .line 25
    :cond_9
    invoke-virtual {p0}, Lfreemarker/core/t;->H()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lfreemarker/core/t;->H()Z

    move-result v0

    if-nez v0, :cond_a

    .line 26
    invoke-virtual {p0}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->t0(Ljava/util/Locale;)V

    .line 27
    :cond_a
    invoke-virtual {p0}, Lfreemarker/core/t;->I()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lfreemarker/core/t;->I()Z

    move-result v0

    if-nez v0, :cond_b

    .line 28
    invoke-virtual {p0}, Lfreemarker/core/t;->volatile()Z

    move-result v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->u0(Z)V

    .line 29
    :cond_b
    invoke-virtual {p0}, Lfreemarker/core/t;->U()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lfreemarker/core/t;->U()Z

    move-result v0

    if-nez v0, :cond_c

    .line 30
    invoke-virtual {p0}, Lfreemarker/core/t;->l()Z

    move-result v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->L0(Z)V

    .line 31
    :cond_c
    invoke-virtual {p0}, Lfreemarker/core/t;->J()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lfreemarker/core/t;->J()Z

    move-result v0

    if-nez v0, :cond_d

    .line 32
    invoke-virtual {p0}, Lfreemarker/core/t;->interface()Lfreemarker/core/TemplateClassResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->v0(Lfreemarker/core/TemplateClassResolver;)V

    .line 33
    :cond_d
    invoke-virtual {p0}, Lfreemarker/core/t;->S()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lfreemarker/core/t;->S()Z

    move-result v0

    if-nez v0, :cond_e

    .line 34
    invoke-virtual {p0}, Lfreemarker/core/t;->j()Lfreemarker/core/p4;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->J0(Lfreemarker/core/p4;)V

    .line 35
    :cond_e
    invoke-virtual {p0}, Lfreemarker/core/t;->K()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lfreemarker/core/t;->K()Z

    move-result v0

    if-nez v0, :cond_f

    .line 36
    invoke-virtual {p0}, Lfreemarker/core/t;->transient()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->w0(Ljava/lang/String;)V

    .line 37
    :cond_f
    invoke-virtual {p0}, Lfreemarker/core/t;->L()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lfreemarker/core/t;->L()Z

    move-result v0

    if-nez v0, :cond_10

    .line 38
    invoke-virtual {p0}, Lfreemarker/core/t;->implements()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->x0(Lfreemarker/template/ObjectWrapper;)V

    .line 39
    :cond_10
    invoke-virtual {p0}, Lfreemarker/core/t;->M()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lfreemarker/core/t;->M()Z

    move-result v0

    if-nez v0, :cond_11

    .line 40
    invoke-virtual {p0}, Lfreemarker/core/t;->instanceof()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->y0(Ljava/lang/String;)V

    .line 41
    :cond_11
    invoke-virtual {p0}, Lfreemarker/core/t;->O()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lfreemarker/core/t;->O()Z

    move-result v0

    if-nez v0, :cond_12

    .line 42
    invoke-virtual {p0}, Lfreemarker/core/t;->e()Z

    move-result v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->E0(Z)V

    .line 43
    :cond_12
    invoke-virtual {p0}, Lfreemarker/core/t;->N()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lfreemarker/core/t;->N()Z

    move-result v0

    if-nez v0, :cond_13

    .line 44
    invoke-virtual {p0}, Lfreemarker/core/t;->a()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->A0(Ljava/util/TimeZone;)V

    .line 45
    :cond_13
    invoke-virtual {p0}, Lfreemarker/core/t;->P()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lfreemarker/core/t;->P()Z

    move-result v0

    if-nez v0, :cond_14

    .line 46
    invoke-virtual {p0}, Lfreemarker/core/t;->f()Lfreemarker/template/TemplateExceptionHandler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->G0(Lfreemarker/template/TemplateExceptionHandler;)V

    .line 47
    :cond_14
    invoke-virtual {p0}, Lfreemarker/core/t;->t()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lfreemarker/core/t;->t()Z

    move-result v0

    if-nez v0, :cond_15

    .line 48
    invoke-virtual {p0}, Lfreemarker/core/t;->goto()Lfreemarker/template/AttemptExceptionReporter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->e0(Lfreemarker/template/AttemptExceptionReporter;)V

    .line 49
    :cond_15
    invoke-virtual {p0}, Lfreemarker/core/t;->Q()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lfreemarker/core/t;->Q()Z

    move-result v0

    if-nez v0, :cond_16

    .line 50
    invoke-virtual {p0}, Lfreemarker/core/t;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->H0(Ljava/lang/String;)V

    .line 51
    :cond_16
    invoke-virtual {p0}, Lfreemarker/core/t;->R()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lfreemarker/core/t;->R()Z

    move-result v0

    if-nez v0, :cond_17

    .line 52
    invoke-virtual {p0}, Lfreemarker/core/t;->h()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->I0(Ljava/util/TimeZone;)V

    .line 53
    :cond_17
    invoke-virtual {p0}, Lfreemarker/core/t;->T()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lfreemarker/core/t;->T()Z

    move-result v0

    if-nez v0, :cond_18

    .line 54
    invoke-virtual {p0}, Lfreemarker/core/t;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->K0(Ljava/lang/String;)V

    .line 55
    :cond_18
    invoke-virtual {p0}, Lfreemarker/core/t;->G()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lfreemarker/core/t;->G()Z

    move-result v0

    if-nez v0, :cond_19

    .line 56
    invoke-virtual {p0}, Lfreemarker/core/t;->continue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->s0(Z)V

    .line 57
    :cond_19
    invoke-virtual {p0}, Lfreemarker/core/t;->F()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lfreemarker/core/t;->F()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 58
    invoke-virtual {p0}, Lfreemarker/core/t;->abstract()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->r0(Ljava/lang/Boolean;)V

    .line 59
    :cond_1a
    invoke-virtual {p0}, Lfreemarker/core/t;->v()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 60
    invoke-virtual {p0}, Lfreemarker/core/t;->break()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/core/t;->catch()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Landroid/support/v4/h52;->h1(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->g0(Ljava/util/Map;)V

    .line 61
    :cond_1b
    invoke-virtual {p0}, Lfreemarker/core/t;->w()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 62
    invoke-virtual {p0}, Lfreemarker/core/t;->class()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/core/t;->const()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/support/v4/h52;->g1(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/t;->h0(Ljava/util/List;)V

    .line 63
    :cond_1c
    invoke-virtual {p0, p1, v1}, Lfreemarker/core/t;->try(Lfreemarker/core/t;Z)V

    return-void

    .line 64
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The argument Template doesn\'t belong to the same Configuration as the TemplateConfiguration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public R0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/h52;->d1:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/h52;->S0()Lfreemarker/template/do;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/do;->h1()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public T0()Lfreemarker/template/do;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/h52;->U0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/t;->synchronized()Lfreemarker/core/t;

    move-result-object v0

    check-cast v0, Lfreemarker/template/do;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public V0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/h52;->a1:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public W0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/h52;->d1:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public X0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/h52;->W0:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Y0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/h52;->X0:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Z0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/h52;->c1:Landroid/support/v4/e91;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/h52;->b1:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/h52;->Z0:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/h52;->e1:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/h52;->V0:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/h52;->Y0:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f1(Landroid/support/v4/h52;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lfreemarker/core/t;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lfreemarker/core/t;->q()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->c0(Z)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lfreemarker/core/t;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lfreemarker/core/t;->getArithmeticEngine()Lfreemarker/core/else;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->d0(Lfreemarker/core/else;)V

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/h52;->V0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/support/v4/h52;->getAutoEscapingPolicy()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/h52;->i1(I)V

    .line 7
    :cond_2
    invoke-virtual {p1}, Lfreemarker/core/t;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lfreemarker/core/t;->this()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->f0(Z)V

    .line 9
    :cond_3
    invoke-virtual {p1}, Lfreemarker/core/t;->x()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p1}, Lfreemarker/core/t;->final()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->i0(Ljava/lang/String;)V

    .line 11
    :cond_4
    invoke-virtual {p1}, Lfreemarker/core/t;->z()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p1}, Lfreemarker/core/t;->super()I

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->k0(I)V

    .line 13
    :cond_5
    invoke-virtual {p1}, Lfreemarker/core/t;->B()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {p0}, Lfreemarker/core/t;->return()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/core/t;->return()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/h52;->h1(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->n0(Ljava/util/Map;)V

    .line 15
    :cond_6
    invoke-virtual {p1}, Lfreemarker/core/t;->C()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {p0}, Lfreemarker/core/t;->throws()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/core/t;->throws()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/h52;->h1(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->o0(Ljava/util/Map;)V

    .line 17
    :cond_7
    invoke-virtual {p1}, Lfreemarker/core/t;->D()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    invoke-virtual {p1}, Lfreemarker/core/t;->extends()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->p0(Ljava/lang/String;)V

    .line 19
    :cond_8
    invoke-virtual {p1}, Lfreemarker/core/t;->E()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20
    invoke-virtual {p1}, Lfreemarker/core/t;->finally()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->q0(Ljava/lang/String;)V

    .line 21
    :cond_9
    invoke-virtual {p1}, Landroid/support/v4/h52;->W0()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22
    invoke-virtual {p1}, Landroid/support/v4/h52;->R0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/h52;->j1(Ljava/lang/String;)V

    .line 23
    :cond_a
    invoke-virtual {p1}, Lfreemarker/core/t;->H()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    invoke-virtual {p1}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->t0(Ljava/util/Locale;)V

    .line 25
    :cond_b
    invoke-virtual {p1}, Lfreemarker/core/t;->I()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 26
    invoke-virtual {p1}, Lfreemarker/core/t;->volatile()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->u0(Z)V

    .line 27
    :cond_c
    invoke-virtual {p1}, Lfreemarker/core/t;->U()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 28
    invoke-virtual {p1}, Lfreemarker/core/t;->l()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->L0(Z)V

    .line 29
    :cond_d
    invoke-virtual {p1}, Landroid/support/v4/h52;->Y0()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 30
    invoke-virtual {p1}, Landroid/support/v4/h52;->getNamingConvention()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/h52;->l1(I)V

    .line 31
    :cond_e
    invoke-virtual {p1}, Lfreemarker/core/t;->J()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 32
    invoke-virtual {p1}, Lfreemarker/core/t;->interface()Lfreemarker/core/TemplateClassResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->v0(Lfreemarker/core/TemplateClassResolver;)V

    .line 33
    :cond_f
    invoke-virtual {p1}, Lfreemarker/core/t;->S()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 34
    invoke-virtual {p1}, Lfreemarker/core/t;->j()Lfreemarker/core/p4;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->J0(Lfreemarker/core/p4;)V

    .line 35
    :cond_10
    invoke-virtual {p1}, Lfreemarker/core/t;->K()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 36
    invoke-virtual {p1}, Lfreemarker/core/t;->transient()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->w0(Ljava/lang/String;)V

    .line 37
    :cond_11
    invoke-virtual {p1}, Lfreemarker/core/t;->L()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 38
    invoke-virtual {p1}, Lfreemarker/core/t;->implements()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->x0(Lfreemarker/template/ObjectWrapper;)V

    .line 39
    :cond_12
    invoke-virtual {p1}, Lfreemarker/core/t;->M()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 40
    invoke-virtual {p1}, Lfreemarker/core/t;->instanceof()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->y0(Ljava/lang/String;)V

    .line 41
    :cond_13
    invoke-virtual {p1}, Landroid/support/v4/h52;->Z0()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 42
    invoke-virtual {p1}, Landroid/support/v4/h52;->getOutputFormat()Landroid/support/v4/e91;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/h52;->m1(Landroid/support/v4/e91;)V

    .line 43
    :cond_14
    invoke-virtual {p1}, Landroid/support/v4/h52;->a1()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 44
    invoke-virtual {p1}, Landroid/support/v4/h52;->getRecognizeStandardFileExtensions()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/h52;->o1(Z)V

    .line 45
    :cond_15
    invoke-virtual {p1}, Lfreemarker/core/t;->O()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 46
    invoke-virtual {p1}, Lfreemarker/core/t;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->E0(Z)V

    .line 47
    :cond_16
    invoke-virtual {p1}, Lfreemarker/core/t;->N()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 48
    invoke-virtual {p1}, Lfreemarker/core/t;->a()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->A0(Ljava/util/TimeZone;)V

    .line 49
    :cond_17
    invoke-virtual {p1}, Landroid/support/v4/h52;->b1()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 50
    invoke-virtual {p1}, Landroid/support/v4/h52;->getStrictSyntaxMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/h52;->p1(Z)V

    .line 51
    :cond_18
    invoke-virtual {p1}, Landroid/support/v4/h52;->d1()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 52
    invoke-virtual {p1}, Landroid/support/v4/h52;->getTagSyntax()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/h52;->r1(I)V

    .line 53
    :cond_19
    invoke-virtual {p1}, Landroid/support/v4/h52;->X0()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 54
    invoke-virtual {p1}, Landroid/support/v4/h52;->getInterpolationSyntax()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/h52;->k1(I)V

    .line 55
    :cond_1a
    invoke-virtual {p1}, Lfreemarker/core/t;->P()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 56
    invoke-virtual {p1}, Lfreemarker/core/t;->f()Lfreemarker/template/TemplateExceptionHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->G0(Lfreemarker/template/TemplateExceptionHandler;)V

    .line 57
    :cond_1b
    invoke-virtual {p1}, Lfreemarker/core/t;->t()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 58
    invoke-virtual {p1}, Lfreemarker/core/t;->goto()Lfreemarker/template/AttemptExceptionReporter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->e0(Lfreemarker/template/AttemptExceptionReporter;)V

    .line 59
    :cond_1c
    invoke-virtual {p1}, Lfreemarker/core/t;->Q()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 60
    invoke-virtual {p1}, Lfreemarker/core/t;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->H0(Ljava/lang/String;)V

    .line 61
    :cond_1d
    invoke-virtual {p1}, Lfreemarker/core/t;->R()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 62
    invoke-virtual {p1}, Lfreemarker/core/t;->h()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->I0(Ljava/util/TimeZone;)V

    .line 63
    :cond_1e
    invoke-virtual {p1}, Lfreemarker/core/t;->T()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 64
    invoke-virtual {p1}, Lfreemarker/core/t;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->K0(Ljava/lang/String;)V

    .line 65
    :cond_1f
    invoke-virtual {p1}, Landroid/support/v4/h52;->e1()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 66
    invoke-virtual {p1}, Landroid/support/v4/h52;->getWhitespaceStripping()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/h52;->s1(Z)V

    .line 67
    :cond_20
    invoke-virtual {p1}, Landroid/support/v4/h52;->c1()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 68
    invoke-virtual {p1}, Landroid/support/v4/h52;->getTabSize()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/h52;->q1(I)V

    .line 69
    :cond_21
    invoke-virtual {p1}, Lfreemarker/core/t;->G()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 70
    invoke-virtual {p1}, Lfreemarker/core/t;->continue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->s0(Z)V

    .line 71
    :cond_22
    invoke-virtual {p1}, Lfreemarker/core/t;->F()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 72
    invoke-virtual {p1}, Lfreemarker/core/t;->abstract()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->r0(Ljava/lang/Boolean;)V

    .line 73
    :cond_23
    invoke-virtual {p1}, Lfreemarker/core/t;->v()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    .line 74
    invoke-virtual {p0}, Lfreemarker/core/t;->catch()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/core/t;->catch()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/h52;->h1(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->g0(Ljava/util/Map;)V

    .line 75
    :cond_24
    invoke-virtual {p1}, Lfreemarker/core/t;->w()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 76
    invoke-virtual {p0}, Lfreemarker/core/t;->const()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/core/t;->const()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/support/v4/h52;->g1(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/t;->h0(Ljava/util/List;)V

    .line 77
    :cond_25
    invoke-virtual {p1, p0, v1}, Lfreemarker/core/t;->try(Lfreemarker/core/t;Z)V

    return-void
.end method

.method public getAutoEscapingPolicy()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/h52;->a1:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/h52;->S0()Lfreemarker/template/do;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/do;->getAutoEscapingPolicy()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getIncompatibleImprovements()Landroid/support/v4/we2;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/h52;->S0()Lfreemarker/template/do;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v0

    return-object v0
.end method

.method public getInterpolationSyntax()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/h52;->W0:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/h52;->S0()Lfreemarker/template/do;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/do;->getInterpolationSyntax()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getNamingConvention()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/h52;->X0:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/h52;->S0()Lfreemarker/template/do;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/do;->getNamingConvention()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getOutputFormat()Landroid/support/v4/e91;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/h52;->c1:Landroid/support/v4/e91;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/h52;->S0()Lfreemarker/template/do;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/do;->getOutputFormat()Landroid/support/v4/e91;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRecognizeStandardFileExtensions()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/h52;->b1:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/h52;->S0()Lfreemarker/template/do;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/do;->getRecognizeStandardFileExtensions()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getStrictSyntaxMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/h52;->Z0:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/h52;->S0()Lfreemarker/template/do;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/do;->getStrictSyntaxMode()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getTabSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/h52;->e1:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/h52;->S0()Lfreemarker/template/do;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/do;->getTabSize()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTagSyntax()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/h52;->V0:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/h52;->S0()Lfreemarker/template/do;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/do;->getTagSyntax()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getWhitespaceStripping()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/h52;->Y0:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/h52;->S0()Lfreemarker/template/do;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/do;->getWhitespaceStripping()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public i1(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/ul2;->public(I)V

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/h52;->a1:Ljava/lang/Integer;

    return-void
.end method

.method public j1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "encoding"

    .line 1
    invoke-static {v0, p1}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Landroid/support/v4/h52;->d1:Ljava/lang/String;

    return-void
.end method

.method public k1(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/ul2;->static(I)V

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/h52;->W0:Ljava/lang/Integer;

    return-void
.end method

.method public l1(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/ul2;->return(I)V

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/h52;->X0:Ljava/lang/Integer;

    return-void
.end method

.method public m1(Landroid/support/v4/e91;)V
    .locals 1

    const-string v0, "outputFormat"

    .line 1
    invoke-static {v0, p1}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Landroid/support/v4/h52;->c1:Landroid/support/v4/e91;

    return-void
.end method

.method public n1(Lfreemarker/template/do;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/h52;->z0(Lfreemarker/core/t;)V

    return-void
.end method

.method public o1(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/h52;->b1:Ljava/lang/Boolean;

    return-void
.end method

.method public p1(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/h52;->Z0:Ljava/lang/Boolean;

    return-void
.end method

.method public q1(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/h52;->e1:Ljava/lang/Integer;

    return-void
.end method

.method public r1(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/ul2;->switch(I)V

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/h52;->V0:Ljava/lang/Integer;

    return-void
.end method

.method public s1(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/h52;->Y0:Ljava/lang/Boolean;

    return-void
.end method

.method public z0(Lfreemarker/core/t;)V
    .locals 2

    const-string v0, "cfg"

    .line 1
    invoke-static {v0, p1}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    instance-of v0, p1, Lfreemarker/template/do;

    if-eqz v0, :cond_4

    .line 3
    iget-boolean v0, p0, Landroid/support/v4/h52;->U0:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lfreemarker/core/t;->synchronized()Lfreemarker/core/t;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This TemplateConfiguration is already associated with a different Configuration instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    move-object v0, p1

    check-cast v0, Lfreemarker/template/do;

    invoke-virtual {v0}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/we2;->intValue()I

    move-result v0

    sget v1, Landroid/support/v4/ul2;->try:I

    if-ge v0, v1, :cond_3

    .line 7
    invoke-direct {p0}, Landroid/support/v4/h52;->U0()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This TemplateConfiguration can\'t be associated to a Configuration that has incompatibleImprovements less than 2.3.22, because it changes non-parser settings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lfreemarker/core/t;->z0(Lfreemarker/core/t;)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Landroid/support/v4/h52;->U0:Z

    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The parent of a TemplateConfiguration can only be a Configuration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
