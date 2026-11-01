.class Lfreemarker/ext/beans/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final for:Ljava/lang/String; = "A markup output value can be converted to markup string like value?markup_string. But consider if the Java method whose argument it will be can handle markup strings properly."


# instance fields
.field private final do:Ljava/lang/reflect/Member;

.field private final if:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Member;[Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/beans/b;->do:Ljava/lang/reflect/Member;

    .line 3
    iput-object p2, p0, Lfreemarker/ext/beans/b;->if:[Ljava/lang/Class;

    return-void
.end method

.method private do(ILfreemarker/template/TemplateModel;Ljava/lang/Class;)Landroid/support/v4/k52;
    .locals 4

    .line 1
    new-instance v0, Lfreemarker/core/z4;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lfreemarker/ext/beans/b;->do:Ljava/lang/reflect/Member;

    .line 2
    invoke-static {v2}, Lfreemarker/ext/beans/j;->case(Ljava/lang/reflect/Member;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, " couldn\'t be called: Can\'t convert the "

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Landroid/support/v4/hl2;

    add-int/2addr p1, v3

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/support/v4/hl2;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x2

    aput-object v2, v1, p1

    const/4 p1, 0x3

    const-string v2, " argument\'s value to the target Java type, "

    aput-object v2, v1, p1

    .line 4
    invoke-static {p3}, Lfreemarker/template/utility/if;->break(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x4

    aput-object p1, v1, v2

    const/4 p1, 0x5

    const-string v2, ". The type of the actual value was: "

    aput-object v2, v1, p1

    new-instance p1, Landroid/support/v4/bl2;

    invoke-direct {p1, p2}, Landroid/support/v4/bl2;-><init>(Lfreemarker/template/TemplateModel;)V

    const/4 v2, 0x6

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lfreemarker/core/z4;-><init>([Ljava/lang/Object;)V

    .line 5
    instance-of p1, p2, Lfreemarker/core/TemplateMarkupOutputModel;

    if-eqz p1, :cond_0

    const-class p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "A markup output value can be converted to markup string like value?markup_string. But consider if the Java method whose argument it will be can handle markup strings properly."

    .line 6
    invoke-virtual {v0, p1}, Lfreemarker/core/z4;->this(Ljava/lang/String;)Lfreemarker/core/z4;

    .line 7
    :cond_0
    new-instance p1, Landroid/support/v4/vl2;

    invoke-direct {p1, v0}, Landroid/support/v4/vl2;-><init>(Lfreemarker/core/z4;)V

    return-object p1
.end method

.method private if(ILjava/lang/Class;)Landroid/support/v4/k52;
    .locals 4

    .line 1
    new-instance v0, Landroid/support/v4/vl2;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lfreemarker/ext/beans/b;->do:Ljava/lang/reflect/Member;

    .line 2
    invoke-static {v2}, Lfreemarker/ext/beans/j;->case(Ljava/lang/reflect/Member;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, " couldn\'t be called: The value of the "

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Landroid/support/v4/hl2;

    add-int/2addr p1, v3

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/support/v4/hl2;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x2

    aput-object v2, v1, p1

    const/4 p1, 0x3

    const-string v2, " argument was null, but the target Java parameter type ("

    aput-object v2, v1, p1

    .line 4
    invoke-static {p2}, Lfreemarker/template/utility/if;->break(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v1, p2

    const/4 p1, 0x5

    const-string p2, ") is primitive and so can\'t store null."

    aput-object p2, v1, p1

    invoke-direct {v0, v1}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method private try(Ljava/util/List;[Ljava/lang/Class;ZLfreemarker/ext/beans/try;)[Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    array-length v0, p2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 3
    new-array v2, v0, [Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    if-eqz p3, :cond_1

    add-int/lit8 v3, v0, -0x1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_5

    .line 5
    aget-object v6, p2, v5

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfreemarker/template/TemplateModel;

    .line 7
    invoke-virtual {p4, v7, v6}, Lfreemarker/ext/beans/try;->tryUnwrapTo(Lfreemarker/template/TemplateModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    .line 8
    sget-object v9, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    if-eq v8, v9, :cond_4

    if-nez v8, :cond_3

    .line 9
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    invoke-direct {p0, v5, v6}, Lfreemarker/ext/beans/b;->if(ILjava/lang/Class;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1

    :cond_3
    :goto_2
    add-int/lit8 v6, v5, 0x1

    .line 11
    aput-object v8, v2, v5

    move v5, v6

    goto :goto_1

    .line 12
    :cond_4
    invoke-direct {p0, v5, v7, v6}, Lfreemarker/ext/beans/b;->do(ILfreemarker/template/TemplateModel;Ljava/lang/Class;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1

    :cond_5
    if-eqz p3, :cond_d

    const/4 p3, 0x1

    sub-int/2addr v0, p3

    .line 13
    aget-object p2, p2, v0

    .line 14
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 16
    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v2, v5

    goto :goto_6

    .line 17
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/template/TemplateModel;

    sub-int/2addr v1, v5

    if-ne v1, p3, :cond_7

    .line 18
    invoke-virtual {p4, v3, p2}, Lfreemarker/ext/beans/try;->tryUnwrapTo(Lfreemarker/template/TemplateModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    sget-object p3, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    if-eq p2, p3, :cond_7

    .line 19
    aput-object p2, v2, v5

    goto :goto_6

    .line 20
    :cond_7
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    :goto_3
    if-ge v4, v1, :cond_c

    if-nez v4, :cond_8

    move-object p3, v3

    goto :goto_4

    .line 21
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    :goto_4
    check-cast p3, Lfreemarker/template/TemplateModel;

    .line 22
    invoke-virtual {p4, p3, v0}, Lfreemarker/ext/beans/try;->tryUnwrapTo(Lfreemarker/template/TemplateModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 23
    sget-object v7, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    if-eq v6, v7, :cond_b

    if-nez v6, :cond_a

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_5

    :cond_9
    add-int/2addr v5, v4

    .line 25
    invoke-direct {p0, v5, v0}, Lfreemarker/ext/beans/b;->if(ILjava/lang/Class;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1

    .line 26
    :cond_a
    :goto_5
    invoke-static {p2, v4, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    add-int/2addr v5, v4

    .line 27
    invoke-direct {p0, v5, p3, v0}, Lfreemarker/ext/beans/b;->do(ILfreemarker/template/TemplateModel;Ljava/lang/Class;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1

    .line 28
    :cond_c
    aput-object p2, v2, v5

    :cond_d
    :goto_6
    return-object v2
.end method


# virtual methods
.method public for()Ljava/lang/reflect/Member;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/b;->do:Ljava/lang/reflect/Member;

    return-object v0
.end method

.method public new(Ljava/util/List;Lfreemarker/ext/beans/try;)[Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    .line 1
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    .line 2
    :goto_0
    iget-object v2, v0, Lfreemarker/ext/beans/b;->do:Ljava/lang/reflect/Member;

    invoke-static {v2}, Lfreemarker/ext/beans/j;->goto(Ljava/lang/reflect/Member;)Z

    move-result v2

    .line 3
    iget-object v3, v0, Lfreemarker/ext/beans/b;->if:[Ljava/lang/Class;

    array-length v3, v3

    const-string v4, " was given."

    const/4 v6, 0x5

    const-string v7, ", but "

    const/4 v8, 0x4

    const-string v9, " argument"

    const-string v10, " arguments"

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x7

    const/4 v15, 0x1

    if-eqz v2, :cond_2

    sub-int/2addr v3, v15

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v3, v5, :cond_4

    .line 5
    new-instance v2, Landroid/support/v4/vl2;

    new-array v5, v14, [Ljava/lang/Object;

    iget-object v14, v0, Lfreemarker/ext/beans/b;->do:Ljava/lang/reflect/Member;

    .line 6
    invoke-static {v14}, Lfreemarker/ext/beans/j;->case(Ljava/lang/reflect/Member;)[Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v5, v13

    const-string v13, " takes at least "

    aput-object v13, v5, v15

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v5, v12

    if-ne v3, v15, :cond_1

    goto :goto_1

    :cond_1
    move-object v9, v10

    :goto_1
    aput-object v9, v5, v11

    aput-object v7, v5, v8

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x6

    aput-object v4, v5, v1

    invoke-direct {v2, v5}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw v2

    .line 9
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v3, v5, :cond_4

    .line 10
    new-instance v2, Landroid/support/v4/vl2;

    new-array v5, v14, [Ljava/lang/Object;

    iget-object v14, v0, Lfreemarker/ext/beans/b;->do:Ljava/lang/reflect/Member;

    .line 11
    invoke-static {v14}, Lfreemarker/ext/beans/j;->case(Ljava/lang/reflect/Member;)[Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v5, v13

    const-string v13, " takes "

    aput-object v13, v5, v15

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v5, v12

    if-ne v3, v15, :cond_3

    goto :goto_2

    :cond_3
    move-object v9, v10

    :goto_2
    aput-object v9, v5, v11

    aput-object v7, v5, v8

    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x6

    aput-object v4, v5, v1

    invoke-direct {v2, v5}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw v2

    .line 14
    :cond_4
    iget-object v3, v0, Lfreemarker/ext/beans/b;->if:[Ljava/lang/Class;

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v3, v2, v4}, Lfreemarker/ext/beans/b;->try(Ljava/util/List;[Ljava/lang/Class;ZLfreemarker/ext/beans/try;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
