.class public abstract Lfreemarker/template/if;
.super Lfreemarker/template/throws;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Lfreemarker/template/AdapterTemplateModel;
.implements Lfreemarker/ext/util/WrapperTemplateModel;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/if$else;,
        Lfreemarker/template/if$if;,
        Lfreemarker/template/if$new;,
        Lfreemarker/template/if$try;,
        Lfreemarker/template/if$case;,
        Lfreemarker/template/if$this;,
        Lfreemarker/template/if$goto;,
        Lfreemarker/template/if$catch;,
        Lfreemarker/template/if$for;,
        Lfreemarker/template/if$break;
    }
.end annotation


# direct methods
.method private constructor <init>(Lfreemarker/template/ObjectWrapper;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/template/throws;-><init>(Lfreemarker/template/ObjectWrapper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/template/ObjectWrapper;Lfreemarker/template/if$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/template/if;-><init>(Lfreemarker/template/ObjectWrapper;)V

    return-void
.end method

.method public static adapt(Ljava/lang/Object;Lfreemarker/template/ObjectWrapperAndUnwrapper;)Lfreemarker/template/if;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 3
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Lfreemarker/template/if$goto;

    check-cast p0, [I

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/if$goto;-><init>([ILfreemarker/template/ObjectWrapper;Lfreemarker/template/if$do;)V

    return-object v0

    .line 5
    :cond_0
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 6
    new-instance v0, Lfreemarker/template/if$try;

    check-cast p0, [D

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/if$try;-><init>([DLfreemarker/template/ObjectWrapper;Lfreemarker/template/if$do;)V

    return-object v0

    .line 7
    :cond_1
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 8
    new-instance v0, Lfreemarker/template/if$this;

    check-cast p0, [J

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/if$this;-><init>([JLfreemarker/template/ObjectWrapper;Lfreemarker/template/if$do;)V

    return-object v0

    .line 9
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 10
    new-instance v0, Lfreemarker/template/if$if;

    check-cast p0, [Z

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/if$if;-><init>([ZLfreemarker/template/ObjectWrapper;Lfreemarker/template/if$do;)V

    return-object v0

    .line 11
    :cond_3
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 12
    new-instance v0, Lfreemarker/template/if$case;

    check-cast p0, [F

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/if$case;-><init>([FLfreemarker/template/ObjectWrapper;Lfreemarker/template/if$do;)V

    return-object v0

    .line 13
    :cond_4
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 14
    new-instance v0, Lfreemarker/template/if$new;

    check-cast p0, [C

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/if$new;-><init>([CLfreemarker/template/ObjectWrapper;Lfreemarker/template/if$do;)V

    return-object v0

    .line 15
    :cond_5
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 16
    new-instance v0, Lfreemarker/template/if$catch;

    check-cast p0, [S

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/if$catch;-><init>([SLfreemarker/template/ObjectWrapper;Lfreemarker/template/if$do;)V

    return-object v0

    .line 17
    :cond_6
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    .line 18
    new-instance v0, Lfreemarker/template/if$for;

    check-cast p0, [B

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/if$for;-><init>([BLfreemarker/template/ObjectWrapper;Lfreemarker/template/if$do;)V

    return-object v0

    .line 19
    :cond_7
    new-instance v0, Lfreemarker/template/if$else;

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/if$else;-><init>(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;Lfreemarker/template/if$do;)V

    return-object v0

    .line 20
    :cond_8
    new-instance v0, Lfreemarker/template/if$break;

    check-cast p0, [Ljava/lang/Object;

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/if$break;-><init>([Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;Lfreemarker/template/if$do;)V

    return-object v0

    .line 21
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not an array"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0}, Lfreemarker/ext/util/WrapperTemplateModel;->getWrappedObject()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
