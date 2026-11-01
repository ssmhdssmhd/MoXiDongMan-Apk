.class public Lfreemarker/ext/beans/try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/utility/RichObjectWrapper;
.implements Lfreemarker/template/utility/WriteProtectable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/beans/try$else;,
        Lfreemarker/ext/beans/try$case;
    }
.end annotation


# static fields
.field private static final default:Lfreemarker/ext/util/ModelFactory;

.field private static final extends:Lfreemarker/ext/util/ModelFactory;

.field private static final import:Lfreemarker/log/if;

.field public static final native:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final public:I = 0x0

.field public static final return:I = 0x1

.field public static final static:I = 0x2

.field public static final switch:I = 0x3

.field private static volatile throws:Z


# instance fields
.field private break:I

.field private final case:Landroid/support/v4/ac;

.field private catch:Lfreemarker/template/ObjectWrapper;

.field private class:Z

.field private const:Z

.field private final do:Ljava/lang/Object;

.field private final else:Landroid/support/v4/ac;

.field private final:Z

.field private final for:Lfreemarker/ext/beans/e;

.field private volatile goto:Z

.field private if:Lfreemarker/ext/beans/class;

.field private final new:Lfreemarker/ext/beans/catch;

.field private super:Z

.field private this:Lfreemarker/template/TemplateModel;

.field private final throw:Landroid/support/v4/we2;

.field private final try:Lfreemarker/ext/util/if;

.field private final while:Lfreemarker/ext/util/ModelFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "freemarker.beans"

    .line 1
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/try;->import:Lfreemarker/log/if;

    .line 2
    sget-object v0, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    sput-object v0, Lfreemarker/ext/beans/try;->native:Ljava/lang/Object;

    .line 3
    new-instance v0, Lfreemarker/ext/beans/try$new;

    invoke-direct {v0}, Lfreemarker/ext/beans/try$new;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/try;->default:Lfreemarker/ext/util/ModelFactory;

    .line 4
    new-instance v0, Lfreemarker/ext/beans/try$try;

    invoke-direct {v0}, Lfreemarker/ext/beans/try$try;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/try;->extends:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/template/do;->t3:Landroid/support/v4/we2;

    invoke-direct {p0, v0}, Lfreemarker/ext/beans/try;-><init>(Landroid/support/v4/we2;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/we2;)V
    .locals 1

    .line 2
    new-instance v0, Lfreemarker/ext/beans/try$do;

    invoke-direct {v0, p1}, Lfreemarker/ext/beans/try$do;-><init>(Landroid/support/v4/we2;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lfreemarker/ext/beans/try;-><init>(Lfreemarker/ext/beans/else;Z)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/ext/beans/else;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/ext/beans/try;-><init>(Lfreemarker/ext/beans/else;ZZ)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/ext/beans/else;ZZ)V
    .locals 8

    .line 4
    const-class p3, Lfreemarker/ext/beans/try;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lfreemarker/ext/beans/try;->this:Lfreemarker/template/TemplateModel;

    .line 6
    iput-object p0, p0, Lfreemarker/ext/beans/try;->catch:Lfreemarker/template/ObjectWrapper;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lfreemarker/ext/beans/try;->class:Z

    .line 8
    new-instance v1, Lfreemarker/ext/beans/try$for;

    invoke-direct {v1, p0}, Lfreemarker/ext/beans/try$for;-><init>(Lfreemarker/ext/beans/try;)V

    iput-object v1, p0, Lfreemarker/ext/beans/try;->while:Lfreemarker/ext/util/ModelFactory;

    .line 9
    invoke-virtual {p1}, Lfreemarker/ext/beans/else;->else()Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    move-result-object v1

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_0

    .line 11
    :try_start_0
    const-class v4, Lfreemarker/template/this;

    if-eq v1, v4, :cond_0

    if-eq v1, p3, :cond_0

    const-class v4, Lfreemarker/template/public;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v4, :cond_0

    :try_start_1
    const-string v4, "finetuneMethodAppearance"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    .line 12
    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/reflect/Method;

    aput-object v6, v5, v0

    const/4 v6, 0x2

    const-class v7, Lfreemarker/ext/beans/try$case;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    goto :goto_0

    .line 13
    :catch_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 14
    sget-object v4, Lfreemarker/ext/beans/try;->import:Lfreemarker/log/if;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to check if finetuneMethodAppearance is overidden in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; acting like if it was, but this way it won\'t utilize the shared class introspection cache."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Lfreemarker/log/if;->final(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    .line 15
    sget-boolean v1, Lfreemarker/ext/beans/try;->throws:Z

    if-nez v1, :cond_1

    .line 16
    sget-object v1, Lfreemarker/ext/beans/try;->import:Lfreemarker/log/if;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overriding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".finetuneMethodAppearance is deprecated and will be banned sometimes in the future. Use setMethodAppearanceFineTuner instead."

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lfreemarker/log/if;->package(Ljava/lang/String;)V

    .line 17
    sput-boolean v0, Lfreemarker/ext/beans/try;->throws:Z

    .line 18
    :cond_1
    invoke-virtual {p1, v2}, Lfreemarker/ext/beans/else;->do(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/ext/beans/else;

    .line 19
    new-instance p3, Lfreemarker/ext/beans/try$if;

    invoke-direct {p3, p0}, Lfreemarker/ext/beans/try$if;-><init>(Lfreemarker/ext/beans/try;)V

    invoke-virtual {p1, p3}, Lfreemarker/ext/beans/else;->import(Lfreemarker/ext/beans/MethodAppearanceFineTuner;)V

    .line 20
    :cond_2
    invoke-virtual {p1}, Lfreemarker/ext/beans/else;->case()Landroid/support/v4/we2;

    move-result-object p3

    iput-object p3, p0, Lfreemarker/ext/beans/try;->throw:Landroid/support/v4/we2;

    .line 21
    invoke-virtual {p1}, Lfreemarker/ext/beans/else;->const()Z

    move-result p3

    iput-boolean p3, p0, Lfreemarker/ext/beans/try;->const:Z

    .line 22
    invoke-virtual {p1}, Lfreemarker/ext/beans/else;->break()Z

    move-result p3

    iput-boolean p3, p0, Lfreemarker/ext/beans/try;->super:Z

    .line 23
    invoke-virtual {p1}, Lfreemarker/ext/beans/else;->for()I

    move-result p3

    iput p3, p0, Lfreemarker/ext/beans/try;->break:I

    .line 24
    invoke-virtual {p1}, Lfreemarker/ext/beans/else;->this()Lfreemarker/template/ObjectWrapper;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lfreemarker/ext/beans/else;->this()Lfreemarker/template/ObjectWrapper;

    move-result-object p3

    goto :goto_2

    :cond_3
    move-object p3, p0

    :goto_2
    iput-object p3, p0, Lfreemarker/ext/beans/try;->catch:Lfreemarker/template/ObjectWrapper;

    .line 25
    invoke-virtual {p1}, Lfreemarker/ext/beans/else;->final()Z

    move-result p3

    iput-boolean p3, p0, Lfreemarker/ext/beans/try;->final:Z

    if-nez p2, :cond_4

    .line 26
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lfreemarker/ext/beans/try;->do:Ljava/lang/Object;

    .line 27
    new-instance v0, Lfreemarker/ext/beans/class;

    .line 28
    invoke-static {p1}, Lfreemarker/ext/beans/_BeansAPI;->new(Lfreemarker/ext/beans/else;)Lfreemarker/ext/beans/const;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lfreemarker/ext/beans/class;-><init>(Lfreemarker/ext/beans/const;Ljava/lang/Object;)V

    iput-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    goto :goto_3

    .line 29
    :cond_4
    invoke-static {p1}, Lfreemarker/ext/beans/_BeansAPI;->new(Lfreemarker/ext/beans/else;)Lfreemarker/ext/beans/const;

    move-result-object p3

    invoke-virtual {p3}, Lfreemarker/ext/beans/const;->do()Lfreemarker/ext/beans/class;

    move-result-object p3

    iput-object p3, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    .line 30
    invoke-virtual {p3}, Lfreemarker/ext/beans/class;->finally()Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p0, Lfreemarker/ext/beans/try;->do:Ljava/lang/Object;

    .line 31
    :goto_3
    new-instance p3, Landroid/support/v4/ac;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p3, v0, p0}, Landroid/support/v4/ac;-><init>(Ljava/lang/Boolean;Lfreemarker/ext/beans/try;)V

    iput-object p3, p0, Lfreemarker/ext/beans/try;->case:Landroid/support/v4/ac;

    .line 32
    new-instance p3, Landroid/support/v4/ac;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p3, v0, p0}, Landroid/support/v4/ac;-><init>(Ljava/lang/Boolean;Lfreemarker/ext/beans/try;)V

    iput-object p3, p0, Lfreemarker/ext/beans/try;->else:Landroid/support/v4/ac;

    .line 33
    new-instance p3, Lfreemarker/ext/beans/e;

    invoke-direct {p3, p0}, Lfreemarker/ext/beans/e;-><init>(Lfreemarker/ext/beans/try;)V

    iput-object p3, p0, Lfreemarker/ext/beans/try;->for:Lfreemarker/ext/beans/e;

    .line 34
    new-instance p3, Lfreemarker/ext/beans/i;

    invoke-direct {p3, p0}, Lfreemarker/ext/beans/i;-><init>(Lfreemarker/ext/beans/try;)V

    iput-object p3, p0, Lfreemarker/ext/beans/try;->new:Lfreemarker/ext/beans/catch;

    .line 35
    new-instance p3, Landroid/support/v4/l8;

    invoke-direct {p3, p0}, Landroid/support/v4/l8;-><init>(Lfreemarker/ext/beans/try;)V

    iput-object p3, p0, Lfreemarker/ext/beans/try;->try:Lfreemarker/ext/util/if;

    .line 36
    invoke-virtual {p1}, Lfreemarker/ext/beans/else;->class()Z

    move-result p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/try;->s(Z)V

    .line 37
    invoke-virtual {p0, p2}, Lfreemarker/ext/beans/try;->break(Z)V

    return-void
.end method

.method public static c(Landroid/support/v4/we2;)Landroid/support/v4/we2;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/support/v4/ul2;->if(Landroid/support/v4/we2;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/we2;->intValue()I

    move-result v0

    sget v1, Landroid/support/v4/ul2;->do:I

    if-lt v0, v1, :cond_4

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/we2;->intValue()I

    move-result v0

    sget v1, Landroid/support/v4/ul2;->break:I

    if-lt v0, v1, :cond_0

    sget-object p0, Lfreemarker/template/do;->q3:Landroid/support/v4/we2;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/we2;->intValue()I

    move-result v0

    sget v1, Landroid/support/v4/ul2;->this:I

    if-ne v0, v1, :cond_1

    sget-object p0, Lfreemarker/template/do;->p3:Landroid/support/v4/we2;

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0}, Lfreemarker/ext/beans/try;->interface(Landroid/support/v4/we2;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lfreemarker/template/do;->n3:Landroid/support/v4/we2;

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {p0}, Lfreemarker/ext/beans/try;->strictfp(Landroid/support/v4/we2;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lfreemarker/template/do;->k3:Landroid/support/v4/we2;

    goto :goto_0

    :cond_3
    sget-object p0, Lfreemarker/template/do;->h3:Landroid/support/v4/we2;

    :goto_0
    return-object p0

    .line 7
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Version must be at least 2.3.0."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static class(Ljava/lang/Number;Ljava/lang/Class;Z)Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/lang/Number;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_1c

    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    goto/16 :goto_a

    .line 3
    :cond_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_1a

    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_2

    goto/16 :goto_8

    .line 4
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_18

    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_3

    goto/16 :goto_6

    .line 5
    :cond_3
    const-class v0, Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_7

    .line 6
    instance-of p1, p0, Ljava/math/BigDecimal;

    if-eqz p1, :cond_4

    return-object p0

    .line 7
    :cond_4
    instance-of p1, p0, Ljava/math/BigInteger;

    if-eqz p1, :cond_5

    .line 8
    new-instance p1, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    .line 9
    :cond_5
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_6

    .line 10
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 11
    :cond_6
    new-instance p1, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    return-object p1

    .line 12
    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_16

    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    goto/16 :goto_4

    .line 13
    :cond_8
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_14

    const-class v0, Ljava/lang/Byte;

    if-ne p1, v0, :cond_9

    goto :goto_2

    .line 14
    :cond_9
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_12

    const-class v0, Ljava/lang/Short;

    if-ne p1, v0, :cond_a

    goto :goto_0

    .line 15
    :cond_a
    const-class v0, Ljava/math/BigInteger;

    if-ne p1, v0, :cond_f

    .line 16
    instance-of p1, p0, Ljava/math/BigInteger;

    if-eqz p1, :cond_b

    return-object p0

    :cond_b
    if-eqz p2, :cond_e

    .line 17
    instance-of p1, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$public;

    if-eqz p1, :cond_c

    .line 18
    check-cast p0, Lfreemarker/ext/beans/OverloadedNumberUtil$public;

    invoke-virtual {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$public;->bigIntegerValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 19
    :cond_c
    instance-of p1, p0, Ljava/math/BigDecimal;

    if-eqz p1, :cond_d

    .line 20
    check-cast p0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 21
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 22
    :cond_e
    new-instance p1, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 23
    :cond_f
    instance-of p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$package;

    if-eqz p2, :cond_10

    check-cast p0, Lfreemarker/ext/beans/OverloadedNumberUtil$package;

    .line 24
    invoke-virtual {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$package;->getSourceNumber()Ljava/lang/Number;

    move-result-object p0

    .line 25
    :cond_10
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_12
    :goto_0
    instance-of p1, p0, Ljava/lang/Short;

    if-eqz p1, :cond_13

    check-cast p0, Ljava/lang/Short;

    goto :goto_1

    :cond_13
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    :goto_1
    return-object p0

    .line 27
    :cond_14
    :goto_2
    instance-of p1, p0, Ljava/lang/Byte;

    if-eqz p1, :cond_15

    check-cast p0, Ljava/lang/Byte;

    goto :goto_3

    :cond_15
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    :goto_3
    return-object p0

    .line 28
    :cond_16
    :goto_4
    instance-of p1, p0, Ljava/lang/Float;

    if-eqz p1, :cond_17

    check-cast p0, Ljava/lang/Float;

    goto :goto_5

    :cond_17
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_5
    return-object p0

    .line 29
    :cond_18
    :goto_6
    instance-of p1, p0, Ljava/lang/Double;

    if-eqz p1, :cond_19

    check-cast p0, Ljava/lang/Double;

    goto :goto_7

    :cond_19
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_7
    return-object p0

    .line 30
    :cond_1a
    :goto_8
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_1b

    check-cast p0, Ljava/lang/Long;

    goto :goto_9

    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_9
    return-object p0

    .line 31
    :cond_1c
    :goto_a
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1d

    check-cast p0, Ljava/lang/Integer;

    goto :goto_b

    :cond_1d
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_b
    return-object p0
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try;->for:Lfreemarker/ext/beans/e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v1, v0}, Lfreemarker/ext/beans/class;->instanceof(Lfreemarker/ext/beans/catch;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/beans/try;->new:Lfreemarker/ext/beans/catch;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v1, v0}, Lfreemarker/ext/beans/class;->instanceof(Lfreemarker/ext/beans/catch;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lfreemarker/ext/beans/try;->try:Lfreemarker/ext/util/if;

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v1, v0}, Lfreemarker/ext/beans/class;->synchronized(Lfreemarker/ext/util/if;)V

    :cond_2
    return-void
.end method

.method public static synthetic do(Lfreemarker/ext/beans/try;)Landroid/support/v4/ac;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/ext/beans/try;->else:Landroid/support/v4/ac;

    return-object p0
.end method

.method public static else(Ljava/math/BigDecimal;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigDecimal;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_c

    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    goto :goto_5

    .line 2
    :cond_0
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_b

    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_1

    goto :goto_4

    .line 3
    :cond_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_a

    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_2

    goto :goto_3

    .line 4
    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_9

    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_8

    const-class v0, Ljava/lang/Short;

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Byte;

    if-ne p1, v0, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    const-class v0, Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    :cond_6
    return-object p0

    .line 9
    :cond_7
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 10
    :cond_8
    :goto_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 11
    :cond_9
    :goto_2
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 12
    :cond_a
    :goto_3
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 13
    :cond_b
    :goto_4
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 14
    :cond_c
    :goto_5
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private f(Lfreemarker/ext/beans/const;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->new()V

    .line 2
    new-instance v0, Lfreemarker/ext/beans/class;

    iget-object v1, p0, Lfreemarker/ext/beans/try;->do:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lfreemarker/ext/beans/class;-><init>(Lfreemarker/ext/beans/const;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lfreemarker/ext/beans/try;->do:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v1, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    if-eqz v1, :cond_4

    .line 5
    iget-object v2, p0, Lfreemarker/ext/beans/try;->for:Lfreemarker/ext/beans/e;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1, v2}, Lfreemarker/ext/beans/class;->e(Lfreemarker/ext/beans/catch;)V

    .line 7
    iget-object v2, p0, Lfreemarker/ext/beans/try;->for:Lfreemarker/ext/beans/e;

    invoke-virtual {v2}, Lfreemarker/ext/beans/catch;->do()V

    .line 8
    :cond_0
    iget-object v2, p0, Lfreemarker/ext/beans/try;->new:Lfreemarker/ext/beans/catch;

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v1, v2}, Lfreemarker/ext/beans/class;->e(Lfreemarker/ext/beans/catch;)V

    .line 10
    iget-object v2, p0, Lfreemarker/ext/beans/try;->new:Lfreemarker/ext/beans/catch;

    invoke-virtual {v2}, Lfreemarker/ext/beans/catch;->do()V

    .line 11
    :cond_1
    iget-object v2, p0, Lfreemarker/ext/beans/try;->try:Lfreemarker/ext/util/if;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v1, v2}, Lfreemarker/ext/beans/class;->f(Lfreemarker/ext/util/if;)V

    .line 13
    iget-object v1, p0, Lfreemarker/ext/beans/try;->try:Lfreemarker/ext/util/if;

    invoke-virtual {v1}, Lfreemarker/ext/util/if;->do()V

    .line 14
    :cond_2
    iget-object v1, p0, Lfreemarker/ext/beans/try;->else:Landroid/support/v4/ac;

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v1}, Lfreemarker/ext/beans/new;->do()V

    .line 16
    :cond_3
    iget-object v1, p0, Lfreemarker/ext/beans/try;->case:Landroid/support/v4/ac;

    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {v1}, Lfreemarker/ext/beans/new;->do()V

    .line 18
    :cond_4
    iput-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    .line 19
    invoke-direct {p0}, Lfreemarker/ext/beans/try;->d()V

    .line 20
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static goto(Ljava/lang/reflect/AccessibleObject;[Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 2
    aget-object v2, p1, v1

    .line 3
    instance-of v3, v2, Ljava/math/BigDecimal;

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    .line 4
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 5
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    .line 7
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected method or  constructor; callable is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    :goto_1
    check-cast v2, Ljava/math/BigDecimal;

    aget-object v3, v0, v1

    invoke-static {v2, v3}, Lfreemarker/ext/beans/try;->else(Ljava/math/BigDecimal;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static synthetic if(Lfreemarker/ext/beans/try;)Landroid/support/v4/ac;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/ext/beans/try;->case:Landroid/support/v4/ac;

    return-object p0
.end method

.method public static interface(Landroid/support/v4/we2;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/we2;->intValue()I

    move-result p0

    sget v0, Landroid/support/v4/ul2;->else:I

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static strictfp(Landroid/support/v4/we2;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/we2;->intValue()I

    move-result p0

    sget v0, Landroid/support/v4/ul2;->new:I

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final super()Lfreemarker/ext/beans/try;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/ext/beans/goto;->do:Lfreemarker/ext/beans/try;

    return-object v0
.end method

.method public static this([Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 4
    aget-object v4, p1, v3

    .line 5
    instance-of v5, v4, Ljava/math/BigDecimal;

    if-eqz v5, :cond_0

    .line 6
    check-cast v4, Ljava/math/BigDecimal;

    aget-object v5, p0, v3

    invoke-static {v4, v5}, Lfreemarker/ext/beans/try;->else(Ljava/math/BigDecimal;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p1, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-le v1, v0, :cond_3

    add-int/lit8 v2, v0, -0x1

    .line 7
    aget-object p0, p0, v2

    :goto_1
    if-ge v0, v1, :cond_3

    .line 8
    aget-object v2, p1, v0

    .line 9
    instance-of v3, v2, Ljava/math/BigDecimal;

    if-eqz v3, :cond_2

    .line 10
    check-cast v2, Ljava/math/BigDecimal;

    invoke-static {v2, p0}, Lfreemarker/ext/beans/try;->else(Ljava/math/BigDecimal;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private v(Lfreemarker/template/TemplateModel;Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/template/TemplateModel;",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Boolean;

    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Object;

    if-eqz p1, :cond_36

    iget-object v3, p0, Lfreemarker/ext/beans/try;->this:Lfreemarker/template/TemplateModel;

    if-ne p1, v3, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->continue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-static {p2}, Lfreemarker/template/utility/if;->while(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 5
    :cond_1
    instance-of v4, p1, Lfreemarker/template/AdapterTemplateModel;

    if-eqz v4, :cond_4

    .line 6
    move-object v4, p1

    check-cast v4, Lfreemarker/template/AdapterTemplateModel;

    invoke-interface {v4, p2}, Lfreemarker/template/AdapterTemplateModel;->getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    if-eq p2, v2, :cond_3

    .line 7
    invoke-virtual {p2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    if-eq p2, v2, :cond_4

    .line 8
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_4

    invoke-static {p2}, Lfreemarker/template/utility/if;->super(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 9
    check-cast v4, Ljava/lang/Number;

    invoke-static {v4, p2, v3}, Lfreemarker/ext/beans/try;->class(Ljava/lang/Number;Ljava/lang/Class;Z)Ljava/lang/Number;

    move-result-object v4

    if-eqz v4, :cond_4

    :cond_3
    :goto_0
    return-object v4

    .line 10
    :cond_4
    instance-of v4, p1, Lfreemarker/ext/util/WrapperTemplateModel;

    if-eqz v4, :cond_7

    .line 11
    move-object v4, p1

    check-cast v4, Lfreemarker/ext/util/WrapperTemplateModel;

    invoke-interface {v4}, Lfreemarker/ext/util/WrapperTemplateModel;->getWrappedObject()Ljava/lang/Object;

    move-result-object v4

    if-eq p2, v2, :cond_6

    .line 12
    invoke-virtual {p2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    if-eq p2, v2, :cond_7

    .line 13
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_7

    invoke-static {p2}, Lfreemarker/template/utility/if;->super(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 14
    check-cast v4, Ljava/lang/Number;

    invoke-static {v4, p2, v3}, Lfreemarker/ext/beans/try;->class(Ljava/lang/Number;Ljava/lang/Class;Z)Ljava/lang/Number;

    move-result-object v4

    if-eqz v4, :cond_7

    :cond_6
    :goto_1
    return-object v4

    :cond_7
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p2, v2, :cond_19

    if-ne v1, p2, :cond_9

    .line 15
    instance-of p2, p1, Lfreemarker/template/TemplateScalarModel;

    if-eqz p2, :cond_8

    .line 16
    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 17
    :cond_8
    sget-object p1, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    return-object p1

    .line 18
    :cond_9
    invoke-static {p2}, Lfreemarker/template/utility/if;->super(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 19
    instance-of v2, p1, Lfreemarker/template/TemplateNumberModel;

    if-eqz v2, :cond_a

    .line 20
    move-object v2, p1

    check-cast v2, Lfreemarker/template/TemplateNumberModel;

    .line 21
    invoke-interface {v2}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object v2

    .line 22
    invoke-static {v2, p2, v3}, Lfreemarker/ext/beans/try;->class(Ljava/lang/Number;Ljava/lang/Class;Z)Ljava/lang/Number;

    move-result-object v2

    if-eqz v2, :cond_a

    return-object v2

    .line 23
    :cond_a
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, p2, :cond_17

    if-ne v0, p2, :cond_b

    goto/16 :goto_3

    .line 24
    :cond_b
    const-class v2, Ljava/util/Map;

    if-ne v2, p2, :cond_c

    .line 25
    instance-of v2, p1, Lfreemarker/template/TemplateHashModel;

    if-eqz v2, :cond_c

    .line 26
    new-instance p2, Lfreemarker/ext/beans/return;

    check-cast p1, Lfreemarker/template/TemplateHashModel;

    invoke-direct {p2, p1, p0}, Lfreemarker/ext/beans/return;-><init>(Lfreemarker/template/TemplateHashModel;Lfreemarker/ext/beans/try;)V

    return-object p2

    .line 27
    :cond_c
    const-class v2, Ljava/util/List;

    if-ne v2, p2, :cond_d

    .line 28
    instance-of v2, p1, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v2, :cond_d

    .line 29
    new-instance p2, Lfreemarker/ext/beans/instanceof;

    check-cast p1, Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {p2, p1, p0}, Lfreemarker/ext/beans/instanceof;-><init>(Lfreemarker/template/TemplateSequenceModel;Lfreemarker/ext/beans/try;)V

    return-object p2

    .line 30
    :cond_d
    const-class v2, Ljava/util/Set;

    if-ne v2, p2, :cond_e

    .line 31
    instance-of v2, p1, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v2, :cond_e

    .line 32
    new-instance p2, Lfreemarker/ext/beans/synchronized;

    check-cast p1, Lfreemarker/template/TemplateCollectionModel;

    invoke-direct {p2, p1, p0}, Lfreemarker/ext/beans/synchronized;-><init>(Lfreemarker/template/TemplateCollectionModel;Lfreemarker/ext/beans/try;)V

    return-object p2

    .line 33
    :cond_e
    const-class v2, Ljava/util/Collection;

    if-eq v2, p2, :cond_f

    const-class v2, Ljava/lang/Iterable;

    if-ne v2, p2, :cond_11

    .line 34
    :cond_f
    instance-of v2, p1, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v2, :cond_10

    .line 35
    new-instance p2, Lfreemarker/ext/beans/final;

    check-cast p1, Lfreemarker/template/TemplateCollectionModel;

    invoke-direct {p2, p1, p0}, Lfreemarker/ext/beans/final;-><init>(Lfreemarker/template/TemplateCollectionModel;Lfreemarker/ext/beans/try;)V

    return-object p2

    .line 36
    :cond_10
    instance-of v2, p1, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v2, :cond_11

    .line 37
    new-instance p2, Lfreemarker/ext/beans/instanceof;

    check-cast p1, Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {p2, p1, p0}, Lfreemarker/ext/beans/instanceof;-><init>(Lfreemarker/template/TemplateSequenceModel;Lfreemarker/ext/beans/try;)V

    return-object p2

    .line 38
    :cond_11
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 39
    instance-of p3, p1, Lfreemarker/template/TemplateSequenceModel;

    if-eqz p3, :cond_12

    .line 40
    check-cast p1, Lfreemarker/template/TemplateSequenceModel;

    invoke-virtual {p0, p1, p2, v5, p4}, Lfreemarker/ext/beans/try;->x(Lfreemarker/template/TemplateSequenceModel;Ljava/lang/Class;ZLjava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 41
    :cond_12
    sget-object p1, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    return-object p1

    .line 42
    :cond_13
    sget-object p4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p4, p2, :cond_15

    const-class p4, Ljava/lang/Character;

    if-ne p2, p4, :cond_14

    goto :goto_2

    .line 43
    :cond_14
    const-class p4, Ljava/util/Date;

    invoke-virtual {p4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_19

    instance-of p4, p1, Lfreemarker/template/TemplateDateModel;

    if-eqz p4, :cond_19

    .line 44
    move-object p4, p1

    check-cast p4, Lfreemarker/template/TemplateDateModel;

    invoke-interface {p4}, Lfreemarker/template/TemplateDateModel;->getAsDate()Ljava/util/Date;

    move-result-object p4

    .line 45
    invoke-virtual {p2, p4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    return-object p4

    .line 46
    :cond_15
    :goto_2
    instance-of p2, p1, Lfreemarker/template/TemplateScalarModel;

    if-eqz p2, :cond_16

    .line 47
    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, v5, :cond_16

    .line 49
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    .line 50
    :cond_16
    sget-object p1, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    return-object p1

    .line 51
    :cond_17
    :goto_3
    instance-of p2, p1, Lfreemarker/template/TemplateBooleanModel;

    if-eqz p2, :cond_18

    .line 52
    check-cast p1, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 53
    :cond_18
    sget-object p1, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    return-object p1

    :cond_19
    :goto_4
    if-eqz p3, :cond_1a

    and-int/lit16 p4, p3, 0x800

    if-eqz p4, :cond_1c

    .line 54
    :cond_1a
    instance-of p4, p1, Lfreemarker/template/TemplateNumberModel;

    if-eqz p4, :cond_1c

    .line 55
    move-object p4, p1

    check-cast p4, Lfreemarker/template/TemplateNumberModel;

    invoke-interface {p4}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object p4

    if-nez p3, :cond_1b

    .line 56
    invoke-virtual {p2, p4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1b
    return-object p4

    :cond_1c
    if-eqz p3, :cond_1d

    and-int/lit16 p4, p3, 0x1000

    if-eqz p4, :cond_1f

    .line 57
    :cond_1d
    instance-of p4, p1, Lfreemarker/template/TemplateDateModel;

    if-eqz p4, :cond_1f

    .line 58
    move-object p4, p1

    check-cast p4, Lfreemarker/template/TemplateDateModel;

    invoke-interface {p4}, Lfreemarker/template/TemplateDateModel;->getAsDate()Ljava/util/Date;

    move-result-object p4

    if-nez p3, :cond_1e

    .line 59
    invoke-virtual {p2, p4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1e
    return-object p4

    :cond_1f
    if-eqz p3, :cond_20

    const p4, 0x82000

    and-int/2addr p4, p3

    if-eqz p4, :cond_26

    .line 60
    :cond_20
    instance-of p4, p1, Lfreemarker/template/TemplateScalarModel;

    if-eqz p4, :cond_26

    if-nez p3, :cond_21

    .line 61
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_26

    .line 62
    :cond_21
    move-object p4, p1

    check-cast p4, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p4}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p4

    if-eqz p3, :cond_25

    const/high16 v2, 0x80000

    and-int/2addr v2, p3

    if-nez v2, :cond_22

    goto :goto_5

    .line 63
    :cond_22
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_24

    and-int/lit16 p1, p3, 0x2000

    if-eqz p1, :cond_23

    .line 64
    new-instance p1, Lfreemarker/ext/beans/break;

    invoke-direct {p1, p4}, Lfreemarker/ext/beans/break;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 65
    :cond_23
    invoke-virtual {p4, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    :cond_24
    and-int/lit16 v2, p3, 0x2000

    if-eqz v2, :cond_26

    :cond_25
    :goto_5
    return-object p4

    :cond_26
    if-eqz p3, :cond_27

    and-int/lit16 p4, p3, 0x4000

    if-eqz p4, :cond_29

    .line 66
    :cond_27
    instance-of p4, p1, Lfreemarker/template/TemplateBooleanModel;

    if-eqz p4, :cond_29

    if-nez p3, :cond_28

    .line 67
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_29

    .line 68
    :cond_28
    check-cast p1, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_29
    if-eqz p3, :cond_2a

    const p4, 0x8000

    and-int/2addr p4, p3

    if-eqz p4, :cond_2c

    .line 69
    :cond_2a
    instance-of p4, p1, Lfreemarker/template/TemplateHashModel;

    if-eqz p4, :cond_2c

    if-nez p3, :cond_2b

    const-class p4, Lfreemarker/ext/beans/return;

    .line 70
    invoke-virtual {p2, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_2c

    .line 71
    :cond_2b
    new-instance p2, Lfreemarker/ext/beans/return;

    check-cast p1, Lfreemarker/template/TemplateHashModel;

    invoke-direct {p2, p1, p0}, Lfreemarker/ext/beans/return;-><init>(Lfreemarker/template/TemplateHashModel;Lfreemarker/ext/beans/try;)V

    return-object p2

    :cond_2c
    if-eqz p3, :cond_2d

    const/high16 p4, 0x10000

    and-int/2addr p4, p3

    if-eqz p4, :cond_2f

    .line 72
    :cond_2d
    instance-of p4, p1, Lfreemarker/template/TemplateSequenceModel;

    if-eqz p4, :cond_2f

    if-nez p3, :cond_2e

    const-class p4, Lfreemarker/ext/beans/instanceof;

    .line 73
    invoke-virtual {p2, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_2f

    .line 74
    :cond_2e
    new-instance p2, Lfreemarker/ext/beans/instanceof;

    check-cast p1, Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {p2, p1, p0}, Lfreemarker/ext/beans/instanceof;-><init>(Lfreemarker/template/TemplateSequenceModel;Lfreemarker/ext/beans/try;)V

    return-object p2

    :cond_2f
    if-eqz p3, :cond_30

    const/high16 p4, 0x20000

    and-int/2addr p4, p3

    if-eqz p4, :cond_32

    .line 75
    :cond_30
    instance-of p4, p1, Lfreemarker/template/TemplateCollectionModel;

    if-eqz p4, :cond_32

    if-nez p3, :cond_31

    const-class p4, Lfreemarker/ext/beans/synchronized;

    .line 76
    invoke-virtual {p2, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_32

    .line 77
    :cond_31
    new-instance p2, Lfreemarker/ext/beans/synchronized;

    check-cast p1, Lfreemarker/template/TemplateCollectionModel;

    invoke-direct {p2, p1, p0}, Lfreemarker/ext/beans/synchronized;-><init>(Lfreemarker/template/TemplateCollectionModel;Lfreemarker/ext/beans/try;)V

    return-object p2

    :cond_32
    const/high16 p4, 0x40000

    and-int/2addr p4, p3

    if-eqz p4, :cond_33

    .line 78
    instance-of p4, p1, Lfreemarker/template/TemplateSequenceModel;

    if-eqz p4, :cond_33

    .line 79
    new-instance p2, Lfreemarker/ext/beans/instanceof;

    check-cast p1, Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {p2, p1, p0}, Lfreemarker/ext/beans/instanceof;-><init>(Lfreemarker/template/TemplateSequenceModel;Lfreemarker/ext/beans/try;)V

    return-object p2

    :cond_33
    if-nez p3, :cond_35

    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_34

    return-object p1

    .line 81
    :cond_34
    sget-object p1, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    return-object p1

    :cond_35
    const/4 p3, 0x0

    goto/16 :goto_4

    :cond_36
    :goto_6
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfreemarker/ext/beans/instanceof;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lfreemarker/ext/beans/instanceof;

    .line 3
    invoke-virtual {p1}, Lfreemarker/ext/beans/instanceof;->do()Lfreemarker/template/TemplateSequenceModel;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1, p2, v1, p3}, Lfreemarker/ext/beans/try;->x(Lfreemarker/template/TemplateSequenceModel;Ljava/lang/Class;ZLjava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 5
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 6
    :cond_1
    new-instance p3, Ljava/util/IdentityHashMap;

    invoke-direct {p3}, Ljava/util/IdentityHashMap;-><init>()V

    .line 7
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 9
    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 12
    invoke-virtual {p2, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x1

    if-nez v3, :cond_3

    .line 13
    invoke-static {p2}, Lfreemarker/template/utility/if;->super(Ljava/lang/Class;)Z

    move-result v4

    .line 14
    const-class v3, Ljava/util/List;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    const/4 v3, 0x1

    :cond_3
    if-eqz v4, :cond_4

    .line 15
    instance-of v9, v7, Ljava/lang/Number;

    if-eqz v9, :cond_4

    .line 16
    check-cast v7, Ljava/lang/Number;

    invoke-static {v7, p2, v8}, Lfreemarker/ext/beans/try;->class(Ljava/lang/Number;Ljava/lang/Class;Z)Ljava/lang/Number;

    move-result-object v7

    goto :goto_1

    .line 17
    :cond_4
    const-class v9, Ljava/lang/String;

    if-ne p2, v9, :cond_5

    instance-of v9, v7, Ljava/lang/Character;

    if-eqz v9, :cond_5

    .line 18
    check-cast v7, Ljava/lang/Character;

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 19
    :cond_5
    const-class v9, Ljava/lang/Character;

    if-eq p2, v9, :cond_6

    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v9, :cond_7

    :cond_6
    instance-of v9, v7, Ljava/lang/String;

    if-eqz v9, :cond_7

    .line 20
    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    .line 21
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v8, :cond_a

    .line 22
    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    goto :goto_1

    .line 23
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 24
    instance-of v8, v7, Ljava/util/List;

    if-eqz v8, :cond_8

    .line 25
    check-cast v7, Ljava/util/List;

    invoke-virtual {p0, v7, p2, p3}, Lfreemarker/ext/beans/try;->a(Ljava/util/List;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 26
    :cond_8
    instance-of v8, v7, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v8, :cond_a

    .line 27
    check-cast v7, Lfreemarker/template/TemplateSequenceModel;

    invoke-virtual {p0, v7, p2, v1, p3}, Lfreemarker/ext/beans/try;->x(Lfreemarker/template/TemplateSequenceModel;Ljava/lang/Class;ZLjava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    :cond_9
    if-eqz v5, :cond_a

    .line 28
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 29
    invoke-virtual {p0, v7}, Lfreemarker/ext/beans/try;->for(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_a
    :goto_1
    :try_start_1
    invoke-static {v0, v6, v7}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p2

    .line 31
    :try_start_2
    new-instance v1, Landroid/support/v4/k52;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-static {p1}, Lfreemarker/template/utility/if;->class(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " object to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {v0}, Lfreemarker/template/utility/if;->class(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Problematic List item at index "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " with value type: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {v7}, Lfreemarker/template/utility/if;->class(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    :cond_b
    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :catchall_0
    move-exception p2

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public abstract(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p2, p3, :cond_0

    sget-object p1, Lfreemarker/template/TemplateModel;->NOTHING:Lfreemarker/template/TemplateModel;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->throws()Lfreemarker/template/ObjectWrapper;

    move-result-object p2

    invoke-interface {p2, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/class;->const(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lfreemarker/ext/beans/class;->static:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    instance-of v1, v0, Lfreemarker/ext/beans/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lfreemarker/ext/beans/b;

    .line 4
    invoke-virtual {v0}, Lfreemarker/ext/beans/b;->for()Ljava/lang/reflect/Member;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 5
    invoke-virtual {v0, p2, p0}, Lfreemarker/ext/beans/b;->new(Ljava/util/List;Lfreemarker/ext/beans/try;)[Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 6
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 7
    :try_start_2
    instance-of v0, p2, Landroid/support/v4/k52;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/support/v4/k52;

    throw p2

    .line 8
    :cond_0
    invoke-static {v2, v1, p2}, Lfreemarker/ext/beans/j;->const(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/Throwable;)Landroid/support/v4/k52;

    move-result-object p2

    throw p2

    .line 9
    :cond_1
    instance-of v1, v0, Lfreemarker/ext/beans/continue;

    if-eqz v1, :cond_3

    .line 10
    check-cast v0, Lfreemarker/ext/beans/continue;

    invoke-virtual {v0, p2, p0}, Lfreemarker/ext/beans/continue;->else(Ljava/util/List;Lfreemarker/ext/beans/try;)Lfreemarker/ext/beans/finally;

    move-result-object p2
    :try_end_2
    .catch Landroid/support/v4/k52; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 11
    :try_start_3
    invoke-virtual {p2, p0}, Lfreemarker/ext/beans/finally;->for(Lfreemarker/ext/beans/try;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object p1

    :catch_1
    move-exception v0

    .line 12
    :try_start_4
    instance-of v1, v0, Landroid/support/v4/k52;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/support/v4/k52;

    throw v0

    .line 13
    :cond_2
    invoke-virtual {p2}, Lfreemarker/ext/beans/finally;->if()Lfreemarker/ext/beans/this;

    move-result-object p2

    invoke-static {v2, p2, v0}, Lfreemarker/ext/beans/j;->catch(Ljava/lang/Object;Lfreemarker/ext/beans/this;Ljava/lang/Throwable;)Landroid/support/v4/k52;

    move-result-object p2

    throw p2

    .line 14
    :cond_3
    new-instance p2, Landroid/support/v4/mc;

    invoke-direct {p2}, Landroid/support/v4/mc;-><init>()V

    throw p2

    .line 15
    :cond_4
    new-instance p2, Landroid/support/v4/k52;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has no public constructors."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catch Landroid/support/v4/k52; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p2

    .line 16
    new-instance v0, Landroid/support/v4/k52;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while creating new instance of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; see cause exception"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_3
    move-exception p1

    .line 18
    throw p1
.end method

.method public break(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->writeProtect()V

    .line 2
    :cond_0
    invoke-direct {p0}, Lfreemarker/ext/beans/try;->d()V

    return-void
.end method

.method public case()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v0}, Lfreemarker/ext/beans/class;->case()V

    return-void
.end method

.method public catch(Ljava/lang/Class;Ljava/lang/reflect/Method;Lfreemarker/ext/beans/try$case;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Lfreemarker/ext/beans/try$case;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public const()Lfreemarker/ext/beans/class;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    return-object v0
.end method

.method public continue()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->import()Landroid/support/v4/we2;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/ext/beans/try;->strictfp(Landroid/support/v4/we2;)Z

    move-result v0

    return v0
.end method

.method public default()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/try;->super:Z

    return v0
.end method

.method public e(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/class;->b(Ljava/lang/Class;)V

    return-void
.end method

.method public extends()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try;->do:Ljava/lang/Object;

    return-object v0
.end method

.method public final()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/ext/beans/try;->break:I

    return v0
.end method

.method public finally()Lfreemarker/template/TemplateHashModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try;->for:Lfreemarker/ext/beans/e;

    return-object v0
.end method

.method public for(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, [Ljava/lang/Object;

    .line 3
    array-length v0, p1

    if-nez v0, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v0, Lfreemarker/ext/beans/package;

    invoke-direct {v0, p1}, Lfreemarker/ext/beans/package;-><init>([Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1

    .line 4
    :cond_1
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :cond_2
    new-instance v0, Lfreemarker/ext/beans/protected;

    invoke-direct {v0, p1}, Lfreemarker/ext/beans/protected;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public g(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->new()V

    .line 3
    iput p1, p0, Lfreemarker/ext/beans/try;->break:I

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->new()V

    .line 2
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v0}, Lfreemarker/ext/beans/class;->while()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v0}, Lfreemarker/ext/beans/class;->goto()Lfreemarker/ext/beans/const;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/const;->catch(Z)V

    .line 5
    invoke-direct {p0, v0}, Lfreemarker/ext/beans/try;->f(Lfreemarker/ext/beans/const;)V

    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->new()V

    .line 2
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v0}, Lfreemarker/ext/beans/class;->import()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v0}, Lfreemarker/ext/beans/class;->goto()Lfreemarker/ext/beans/const;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/const;->class(I)V

    .line 5
    invoke-direct {p0, v0}, Lfreemarker/ext/beans/try;->f(Lfreemarker/ext/beans/const;)V

    :cond_0
    return-void
.end method

.method public implements()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/try;->class:Z

    return v0
.end method

.method public import()Landroid/support/v4/we2;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try;->throw:Landroid/support/v4/we2;

    return-object v0
.end method

.method public instanceof()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/try;->const:Z

    return v0
.end method

.method public isWriteProtected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/try;->goto:Z

    return v0
.end method

.method public j(Lfreemarker/ext/beans/MethodAppearanceFineTuner;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->new()V

    .line 2
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v0}, Lfreemarker/ext/beans/class;->static()Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v0}, Lfreemarker/ext/beans/class;->goto()Lfreemarker/ext/beans/const;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/const;->const(Lfreemarker/ext/beans/MethodAppearanceFineTuner;)V

    .line 5
    invoke-direct {p0, v0}, Lfreemarker/ext/beans/try;->f(Lfreemarker/ext/beans/const;)V

    :cond_0
    return-void
.end method

.method public k(Lfreemarker/ext/beans/MethodSorter;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->new()V

    .line 2
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v0}, Lfreemarker/ext/beans/class;->throws()Lfreemarker/ext/beans/MethodSorter;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v0}, Lfreemarker/ext/beans/class;->goto()Lfreemarker/ext/beans/const;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/const;->final(Lfreemarker/ext/beans/MethodSorter;)V

    .line 5
    invoke-direct {p0, v0}, Lfreemarker/ext/beans/try;->f(Lfreemarker/ext/beans/const;)V

    :cond_0
    return-void
.end method

.method public l(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->new()V

    .line 3
    iput-boolean p1, p0, Lfreemarker/ext/beans/try;->class:Z

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m(Lfreemarker/template/TemplateModel;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->new()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/beans/try;->this:Lfreemarker/template/TemplateModel;

    return-void
.end method

.method public n(Lfreemarker/template/ObjectWrapper;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->new()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/beans/try;->catch:Lfreemarker/template/ObjectWrapper;

    return-void
.end method

.method public native(Ljava/lang/Object;Lfreemarker/ext/util/ModelFactory;)Lfreemarker/template/TemplateModel;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p2, p1, p0}, Lfreemarker/ext/util/ModelFactory;->create(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public new()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/try;->goto:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t modify the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " object, as it was write protected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->new()V

    .line 2
    iput-boolean p1, p0, Lfreemarker/ext/beans/try;->super:Z

    return-void
.end method

.method public p(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->new()V

    .line 2
    iput-boolean p1, p0, Lfreemarker/ext/beans/try;->const:Z

    return-void
.end method

.method public package()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v0}, Lfreemarker/ext/beans/class;->package()Z

    move-result v0

    return v0
.end method

.method public private()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try;->try:Lfreemarker/ext/util/if;

    invoke-virtual {v0}, Lfreemarker/ext/util/if;->new()Z

    move-result v0

    return v0
.end method

.method public protected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v0}, Lfreemarker/ext/beans/class;->public()Z

    move-result v0

    return v0
.end method

.method public public()Lfreemarker/ext/beans/MethodAppearanceFineTuner;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v0}, Lfreemarker/ext/beans/class;->static()Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    move-result-object v0

    return-object v0
.end method

.method public q(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->new()V

    .line 2
    iput-boolean p1, p0, Lfreemarker/ext/beans/try;->final:Z

    return-void
.end method

.method public r(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->new()V

    .line 2
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v0}, Lfreemarker/ext/beans/class;->package()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v0}, Lfreemarker/ext/beans/class;->goto()Lfreemarker/ext/beans/const;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/const;->super(Z)V

    .line 5
    invoke-direct {p0, v0}, Lfreemarker/ext/beans/try;->f(Lfreemarker/ext/beans/const;)V

    :cond_0
    return-void
.end method

.method public return()Lfreemarker/ext/beans/MethodSorter;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v0}, Lfreemarker/ext/beans/class;->throws()Lfreemarker/ext/beans/MethodSorter;

    move-result-object v0

    return-object v0
.end method

.method public s(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->new()V

    .line 2
    iget-object v0, p0, Lfreemarker/ext/beans/try;->try:Lfreemarker/ext/util/if;

    invoke-virtual {v0, p1}, Lfreemarker/ext/util/if;->goto(Z)V

    return-void
.end method

.method public static()Lfreemarker/ext/util/if;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try;->try:Lfreemarker/ext/util/if;

    return-object v0
.end method

.method public switch(Ljava/lang/Class;)Lfreemarker/ext/util/ModelFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lfreemarker/ext/util/ModelFactory;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean p1, p0, Lfreemarker/ext/beans/try;->const:Z

    if-eqz p1, :cond_0

    sget-object p1, Lfreemarker/ext/beans/a;->for:Lfreemarker/ext/util/ModelFactory;

    goto :goto_0

    :cond_0
    sget-object p1, Lfreemarker/ext/beans/throws;->goto:Lfreemarker/ext/util/ModelFactory;

    :goto_0
    return-object p1

    .line 3
    :cond_1
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    sget-object p1, Lfreemarker/ext/beans/super;->goto:Lfreemarker/ext/util/ModelFactory;

    return-object p1

    .line 5
    :cond_2
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    sget-object p1, Lfreemarker/ext/beans/private;->else:Lfreemarker/ext/util/ModelFactory;

    return-object p1

    .line 7
    :cond_3
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    sget-object p1, Lfreemarker/ext/beans/throw;->goto:Lfreemarker/ext/util/ModelFactory;

    return-object p1

    .line 9
    :cond_4
    const-class v0, Ljava/lang/Boolean;

    if-ne v0, p1, :cond_5

    .line 10
    iget-object p1, p0, Lfreemarker/ext/beans/try;->while:Lfreemarker/ext/util/ModelFactory;

    return-object p1

    .line 11
    :cond_5
    const-class v0, Ljava/util/ResourceBundle;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12
    sget-object p1, Lfreemarker/ext/beans/implements;->goto:Lfreemarker/ext/util/ModelFactory;

    return-object p1

    .line 13
    :cond_6
    const-class v0, Ljava/util/Iterator;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14
    sget-object p1, Lfreemarker/ext/beans/try;->default:Lfreemarker/ext/util/ModelFactory;

    return-object p1

    .line 15
    :cond_7
    const-class v0, Ljava/util/Enumeration;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 16
    sget-object p1, Lfreemarker/ext/beans/try;->extends:Lfreemarker/ext/util/ModelFactory;

    return-object p1

    .line 17
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 18
    sget-object p1, Lfreemarker/ext/beans/for;->goto:Lfreemarker/ext/util/ModelFactory;

    return-object p1

    .line 19
    :cond_9
    sget-object p1, Lfreemarker/ext/beans/f;->else:Lfreemarker/ext/util/ModelFactory;

    return-object p1
.end method

.method public synchronized()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/try;->final:Z

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simpleMapWrapper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lfreemarker/ext/beans/try;->const:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", exposureLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    .line 2
    invoke-virtual {v1}, Lfreemarker/ext/beans/class;->import()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exposeFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    .line 3
    invoke-virtual {v1}, Lfreemarker/ext/beans/class;->while()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", preferIndexedReadMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lfreemarker/ext/beans/try;->super:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", treatDefaultMethodsAsBeanMembers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    .line 4
    invoke-virtual {v1}, Lfreemarker/ext/beans/class;->package()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sharedClassIntrospCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    .line 5
    invoke-virtual {v1}, Lfreemarker/ext/beans/class;->abstract()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public throw()Lfreemarker/template/TemplateHashModel;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try;->new:Lfreemarker/ext/beans/catch;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Enums not supported before J2SE 5."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public throws()Lfreemarker/template/ObjectWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try;->catch:Lfreemarker/template/ObjectWrapper;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->t()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lfreemarker/template/utility/if;->class(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfreemarker/ext/beans/try;->throw:Landroid/support/v4/we2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transient()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v0}, Lfreemarker/ext/beans/class;->while()Z

    move-result v0

    return v0
.end method

.method public try()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v0}, Lfreemarker/ext/beans/class;->case()V

    return-void
.end method

.method public tryUnwrapTo(Lfreemarker/template/TemplateModel;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/template/TemplateModel;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lfreemarker/ext/beans/try;->u(Lfreemarker/template/TemplateModel;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public u(Lfreemarker/template/TemplateModel;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/template/TemplateModel;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lfreemarker/ext/beans/try;->v(Lfreemarker/template/TemplateModel;Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    and-int/lit8 p2, p3, 0x1

    if-eqz p2, :cond_0

    .line 2
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, p3}, Lfreemarker/ext/beans/OverloadedNumberUtil;->do(Ljava/lang/Number;I)Ljava/lang/Number;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/beans/try;->w(Lfreemarker/template/TemplateModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public volatile()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/try;->import()Landroid/support/v4/we2;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/ext/beans/try;->interface(Landroid/support/v4/we2;)Z

    move-result v0

    return v0
.end method

.method public w(Lfreemarker/template/TemplateModel;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/template/TemplateModel;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lfreemarker/ext/beans/try;->tryUnwrapTo(Lfreemarker/template/TemplateModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/k52;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not unwrap model of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to type "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public while()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/try;->if:Lfreemarker/ext/beans/class;

    invoke-virtual {v0}, Lfreemarker/ext/beans/class;->import()I

    move-result v0

    return v0
.end method

.method public wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/ext/beans/try;->this:Lfreemarker/template/TemplateModel;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/beans/try;->try:Lfreemarker/ext/util/if;

    invoke-virtual {v0, p1}, Lfreemarker/ext/util/if;->for(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public wrapAsAPI(Ljava/lang/Object;)Lfreemarker/template/TemplateHashModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/ext/beans/do;

    invoke-direct {v0, p1, p0}, Lfreemarker/ext/beans/do;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/try;)V

    return-object v0
.end method

.method public writeProtect()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lfreemarker/ext/beans/try;->goto:Z

    return-void
.end method

.method public x(Lfreemarker/template/TemplateSequenceModel;Ljava/lang/Class;ZLjava/util/Map;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/template/TemplateSequenceModel;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 1
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_0
    new-instance p4, Ljava/util/IdentityHashMap;

    invoke-direct {p4}, Ljava/util/IdentityHashMap;-><init>()V

    .line 3
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 4
    invoke-interface {p1}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    .line 5
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-interface {p4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 7
    :try_start_0
    invoke-interface {p1, v3}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v4

    .line 8
    invoke-direct {p0, v4, p2, v2, p4}, Lfreemarker/ext/beans/try;->v(Lfreemarker/template/TemplateModel;Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;

    move-result-object v5

    .line 9
    sget-object v6, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v6, :cond_3

    if-eqz p3, :cond_2

    .line 10
    invoke-interface {p4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    .line 11
    :cond_2
    :try_start_1
    new-instance p2, Landroid/support/v4/vl2;

    const/16 p3, 0x8

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "Failed to convert "

    aput-object v0, p3, v2

    new-instance v0, Landroid/support/v4/bl2;

    invoke-direct {v0, p1}, Landroid/support/v4/bl2;-><init>(Lfreemarker/template/TemplateModel;)V

    const/4 v2, 0x1

    aput-object v0, p3, v2

    const/4 v0, 0x2

    const-string v2, " object to "

    aput-object v2, p3, v0

    const/4 v0, 0x3

    new-instance v2, Landroid/support/v4/il2;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/support/v4/il2;-><init>(Ljava/lang/Class;)V

    aput-object v2, p3, v0

    const/4 v0, 0x4

    const-string v1, ": Problematic sequence item at index "

    aput-object v1, p3, v0

    const/4 v0, 0x5

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    const/4 v0, 0x6

    const-string v1, " with value type: "

    aput-object v1, p3, v0

    const/4 v0, 0x7

    new-instance v1, Landroid/support/v4/bl2;

    invoke-direct {v1, v4}, Landroid/support/v4/bl2;-><init>(Lfreemarker/template/TemplateModel;)V

    aput-object v1, p3, v0

    invoke-direct {p2, p3}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw p2

    .line 14
    :cond_3
    invoke-static {v1, v3, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 15
    invoke-interface {p4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    throw p2

    .line 17
    :cond_4
    invoke-interface {p4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public y(Ljava/lang/Object;Ljava/lang/reflect/Method;)Lfreemarker/template/TemplateMethodModelEx;
    .locals 2

    .line 1
    new-instance v0, Lfreemarker/ext/beans/c;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p0}, Lfreemarker/ext/beans/c;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lfreemarker/ext/beans/try;)V

    return-object v0
.end method
