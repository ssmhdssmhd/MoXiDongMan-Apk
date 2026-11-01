.class final Lcom/google/protobuf/return;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageInfoFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/return$try;,
        Lcom/google/protobuf/return$new;
    }
.end annotation


# static fields
.field private static final do:Ljava/lang/String; = "getDefaultInstance"

.field private static final for:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final if:Lcom/google/protobuf/return;

.field private static new:Lcom/google/protobuf/return$new;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/protobuf/return;

    invoke-direct {v0}, Lcom/google/protobuf/return;-><init>()V

    sput-object v0, Lcom/google/protobuf/return;->if:Lcom/google/protobuf/return;

    .line 2
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "cached_size"

    const-string v2, "serialized_size"

    const-string v3, "class"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/protobuf/return;->for:Ljava/util/Set;

    .line 4
    new-instance v0, Lcom/google/protobuf/return$new;

    invoke-direct {v0}, Lcom/google/protobuf/return$new;-><init>()V

    sput-object v0, Lcom/google/protobuf/return;->new:Lcom/google/protobuf/return$new;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static break(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$else;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/Descriptors$else;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/return;->final(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/protobuf/return;->catch(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method private static case(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/MessageInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/Descriptors$if;",
            ")",
            "Lcom/google/protobuf/MessageInfo;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/return$for;->do:[I

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$if;->do()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->static()Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/google/protobuf/return;->goto(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/h1;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$if;->do()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->static()Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unsupported syntax: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    invoke-static {p0, p1}, Lcom/google/protobuf/return;->else(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/h1;

    move-result-object p0

    return-object p0
.end method

.method private static catch(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x27

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unable to find field "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in message class "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static class(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->for()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/return;->static(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MemoizedSerializedSize"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static const(Ljava/lang/Class;)Lcom/google/protobuf/Message;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/protobuf/Message;"
        }
    .end annotation

    :try_start_0
    const-string v0, "getDefaultInstance"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 1
    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to get default instance for message class "

    .line 4
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synthetic do(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/return;->static(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static else(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/h1;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/Descriptors$if;",
            ")",
            "Lcom/google/protobuf/h1;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/Descriptors$if;->super()Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/h1;->new(I)Lcom/google/protobuf/h1$do;

    move-result-object v2

    .line 3
    invoke-static/range {p0 .. p0}, Lcom/google/protobuf/return;->const(Ljava/lang/Class;)Lcom/google/protobuf/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/protobuf/h1$do;->for(Ljava/lang/Object;)V

    .line 4
    sget-object v3, Lcom/google/protobuf/p0;->PROTO2:Lcom/google/protobuf/p0;

    invoke-virtual {v2, v3}, Lcom/google/protobuf/h1$do;->case(Lcom/google/protobuf/p0;)V

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/Descriptors$if;->native()Lcom/google/protobuf/DescriptorProtos$catch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$catch;->getMessageSetWireFormat()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/protobuf/h1$do;->try(Z)V

    .line 6
    new-instance v3, Lcom/google/protobuf/return$try;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/protobuf/return$try;-><init>(Lcom/google/protobuf/return$do;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v8, v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_c

    .line 8
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/protobuf/Descriptors$else;

    .line 9
    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$else;->do()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/protobuf/Descriptors$FileDescriptor;->import()Lcom/google/protobuf/DescriptorProtos$break;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/protobuf/DescriptorProtos$break;->getJavaStringCheckUtf8()Z

    move-result v15

    .line 10
    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v11

    sget-object v12, Lcom/google/protobuf/Descriptors$else$do;->ENUM:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v11, v12, :cond_0

    .line 11
    new-instance v11, Lcom/google/protobuf/return$do;

    invoke-direct {v11, v10}, Lcom/google/protobuf/return$do;-><init>(Lcom/google/protobuf/Descriptors$else;)V

    move-object v14, v11

    goto :goto_1

    :cond_0
    move-object v14, v4

    .line 12
    :goto_1
    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$else;->catch()Lcom/google/protobuf/Descriptors$break;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 13
    invoke-static {v0, v10, v3, v15, v14}, Lcom/google/protobuf/return;->new(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/return$try;ZLcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/d;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/google/protobuf/h1$do;->new(Lcom/google/protobuf/d;)V

    goto/16 :goto_2

    .line 14
    :cond_1
    invoke-static {v0, v10}, Lcom/google/protobuf/return;->break(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$else;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 15
    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result v13

    .line 16
    invoke-static {v10}, Lcom/google/protobuf/return;->super(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/g;

    move-result-object v4

    .line 17
    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$else;->finally()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 18
    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v4

    const/4 v15, 0x2

    invoke-virtual {v4, v15}, Lcom/google/protobuf/Descriptors$if;->break(I)Lcom/google/protobuf/Descriptors$else;

    move-result-object v4

    .line 19
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v15

    if-ne v15, v12, :cond_2

    .line 20
    new-instance v14, Lcom/google/protobuf/return$if;

    invoke-direct {v14, v4}, Lcom/google/protobuf/return$if;-><init>(Lcom/google/protobuf/Descriptors$else;)V

    .line 21
    :cond_2
    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$else;->for()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/protobuf/y0;->continue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 22
    invoke-static {v11, v13, v4, v14}, Lcom/google/protobuf/d;->try(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/d;

    move-result-object v4

    .line 23
    invoke-virtual {v2, v4}, Lcom/google/protobuf/h1$do;->new(Lcom/google/protobuf/d;)V

    goto/16 :goto_3

    .line 24
    :cond_3
    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v12

    if-eqz v12, :cond_8

    if-eqz v14, :cond_5

    .line 25
    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$else;->isPacked()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 26
    invoke-static {v0, v10}, Lcom/google/protobuf/return;->try(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$else;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 27
    invoke-static {v11, v13, v4, v14, v10}, Lcom/google/protobuf/d;->goto(Ljava/lang/reflect/Field;ILcom/google/protobuf/g;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)Lcom/google/protobuf/d;

    move-result-object v4

    .line 28
    invoke-virtual {v2, v4}, Lcom/google/protobuf/h1$do;->new(Lcom/google/protobuf/d;)V

    goto/16 :goto_3

    .line 29
    :cond_4
    invoke-static {v11, v13, v4, v14}, Lcom/google/protobuf/d;->new(Ljava/lang/reflect/Field;ILcom/google/protobuf/g;Lcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/d;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/protobuf/h1$do;->new(Lcom/google/protobuf/d;)V

    goto/16 :goto_3

    .line 30
    :cond_5
    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v12

    sget-object v14, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v12, v14, :cond_6

    .line 31
    invoke-static {v0, v10}, Lcom/google/protobuf/return;->native(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Class;

    move-result-object v10

    .line 32
    invoke-static {v11, v13, v4, v10}, Lcom/google/protobuf/d;->catch(Ljava/lang/reflect/Field;ILcom/google/protobuf/g;Ljava/lang/Class;)Lcom/google/protobuf/d;

    move-result-object v4

    .line 33
    invoke-virtual {v2, v4}, Lcom/google/protobuf/h1$do;->new(Lcom/google/protobuf/d;)V

    goto :goto_3

    .line 34
    :cond_6
    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$else;->isPacked()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 35
    invoke-static {v0, v10}, Lcom/google/protobuf/return;->try(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$else;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-static {v11, v13, v4, v10}, Lcom/google/protobuf/d;->else(Ljava/lang/reflect/Field;ILcom/google/protobuf/g;Ljava/lang/reflect/Field;)Lcom/google/protobuf/d;

    move-result-object v4

    .line 36
    invoke-virtual {v2, v4}, Lcom/google/protobuf/h1$do;->new(Lcom/google/protobuf/d;)V

    goto :goto_3

    .line 37
    :cond_7
    invoke-static {v11, v13, v4, v15}, Lcom/google/protobuf/d;->for(Ljava/lang/reflect/Field;ILcom/google/protobuf/g;Z)Lcom/google/protobuf/d;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/protobuf/h1$do;->new(Lcom/google/protobuf/d;)V

    goto :goto_3

    :cond_8
    if-nez v8, :cond_9

    .line 38
    invoke-static {v0, v9}, Lcom/google/protobuf/return;->for(Ljava/lang/Class;I)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 39
    :cond_9
    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$else;->abstract()Z

    move-result v10

    if-eqz v10, :cond_a

    move-object v10, v11

    move v11, v13

    move-object v12, v4

    move-object v13, v8

    move-object/from16 v16, v14

    move/from16 v14, v17

    .line 40
    invoke-static/range {v10 .. v16}, Lcom/google/protobuf/d;->break(Ljava/lang/reflect/Field;ILcom/google/protobuf/g;Ljava/lang/reflect/Field;IZLcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/d;

    move-result-object v4

    .line 41
    invoke-virtual {v2, v4}, Lcom/google/protobuf/h1$do;->new(Lcom/google/protobuf/d;)V

    goto :goto_2

    :cond_a
    move-object/from16 v16, v14

    move-object v10, v11

    move v11, v13

    move-object v12, v4

    move-object v13, v8

    move/from16 v14, v17

    .line 42
    invoke-static/range {v10 .. v16}, Lcom/google/protobuf/d;->this(Ljava/lang/reflect/Field;ILcom/google/protobuf/g;Ljava/lang/reflect/Field;IZLcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/d;

    move-result-object v4

    .line 43
    invoke-virtual {v2, v4}, Lcom/google/protobuf/h1$do;->new(Lcom/google/protobuf/d;)V

    :goto_2
    shl-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_b

    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    const/16 v17, 0x1

    :cond_b
    :goto_3
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 44
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 45
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_f

    .line 46
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Descriptors$else;

    .line 47
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$else;->abstract()Z

    move-result v6

    if-nez v6, :cond_d

    .line 48
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v6

    sget-object v7, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v6, v7, :cond_e

    .line 49
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/return;->return(Lcom/google/protobuf/Descriptors$if;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 50
    :cond_d
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 51
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 52
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_10

    .line 53
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 54
    :cond_10
    invoke-virtual {v2, v1}, Lcom/google/protobuf/h1$do;->if([I)V

    .line 55
    invoke-virtual {v2}, Lcom/google/protobuf/h1$do;->do()Lcom/google/protobuf/h1;

    move-result-object v0

    return-object v0
.end method

.method public static final(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$if;->GROUP:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$if;->for()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->for()Ljava/lang/String;

    move-result-object p0

    .line 4
    :goto_0
    sget-object v0, Lcom/google/protobuf/return;->for:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "__"

    goto :goto_1

    :cond_1
    const-string v0, "_"

    .line 5
    :goto_1
    invoke-static {p0}, Lcom/google/protobuf/return;->static(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_2
    return-object p0
.end method

.method private static for(Ljava/lang/Class;I)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "bitField"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/protobuf/return;->catch(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method private static goto(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/h1;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/Descriptors$if;",
            ")",
            "Lcom/google/protobuf/h1;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$if;->super()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/h1;->new(I)Lcom/google/protobuf/h1$do;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/google/protobuf/return;->const(Ljava/lang/Class;)Lcom/google/protobuf/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/h1$do;->for(Ljava/lang/Object;)V

    .line 4
    sget-object v1, Lcom/google/protobuf/p0;->PROTO3:Lcom/google/protobuf/p0;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/h1$do;->case(Lcom/google/protobuf/p0;)V

    .line 5
    new-instance v1, Lcom/google/protobuf/return$try;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/return$try;-><init>(Lcom/google/protobuf/return$do;)V

    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 7
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Descriptors$else;

    .line 8
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$else;->catch()Lcom/google/protobuf/Descriptors$break;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 9
    invoke-static {p0, v4, v1, v6, v2}, Lcom/google/protobuf/return;->new(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/return$try;ZLcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/d;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/protobuf/h1$do;->new(Lcom/google/protobuf/d;)V

    goto/16 :goto_1

    .line 10
    :cond_0
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$else;->finally()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 11
    invoke-static {p0, v4}, Lcom/google/protobuf/return;->break(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$else;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 12
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result v6

    .line 13
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$else;->for()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/protobuf/y0;->continue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 14
    invoke-static {v5, v6, v4, v2}, Lcom/google/protobuf/d;->try(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/d;

    move-result-object v4

    .line 15
    invoke-virtual {v0, v4}, Lcom/google/protobuf/h1$do;->new(Lcom/google/protobuf/d;)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v5

    sget-object v7, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v5, v7, :cond_2

    .line 17
    invoke-static {p0, v4}, Lcom/google/protobuf/return;->break(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$else;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 18
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result v6

    .line 19
    invoke-static {v4}, Lcom/google/protobuf/return;->super(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/g;

    move-result-object v7

    .line 20
    invoke-static {p0, v4}, Lcom/google/protobuf/return;->native(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Class;

    move-result-object v4

    .line 21
    invoke-static {v5, v6, v7, v4}, Lcom/google/protobuf/d;->catch(Ljava/lang/reflect/Field;ILcom/google/protobuf/g;Ljava/lang/Class;)Lcom/google/protobuf/d;

    move-result-object v4

    .line 22
    invoke-virtual {v0, v4}, Lcom/google/protobuf/h1$do;->new(Lcom/google/protobuf/d;)V

    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$else;->isPacked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 24
    invoke-static {p0, v4}, Lcom/google/protobuf/return;->break(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$else;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 25
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result v6

    .line 26
    invoke-static {v4}, Lcom/google/protobuf/return;->super(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/g;

    move-result-object v7

    .line 27
    invoke-static {p0, v4}, Lcom/google/protobuf/return;->try(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$else;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 28
    invoke-static {v5, v6, v7, v4}, Lcom/google/protobuf/d;->else(Ljava/lang/reflect/Field;ILcom/google/protobuf/g;Ljava/lang/reflect/Field;)Lcom/google/protobuf/d;

    move-result-object v4

    .line 29
    invoke-virtual {v0, v4}, Lcom/google/protobuf/h1$do;->new(Lcom/google/protobuf/d;)V

    goto :goto_1

    .line 30
    :cond_3
    invoke-static {p0, v4}, Lcom/google/protobuf/return;->break(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$else;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result v7

    invoke-static {v4}, Lcom/google/protobuf/return;->super(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/g;

    move-result-object v4

    invoke-static {v5, v7, v4, v6}, Lcom/google/protobuf/d;->for(Ljava/lang/reflect/Field;ILcom/google/protobuf/g;Z)Lcom/google/protobuf/d;

    move-result-object v4

    .line 31
    invoke-virtual {v0, v4}, Lcom/google/protobuf/h1$do;->new(Lcom/google/protobuf/d;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 32
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/h1$do;->do()Lcom/google/protobuf/h1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic if(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/protobuf/return;->catch(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method private static import(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/Descriptors$else;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$if;->GROUP:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$if;->for()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->for()Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_0
    invoke-static {p1}, Lcom/google/protobuf/return;->public(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static native(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/Descriptors$else;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$if;->GROUP:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$if;->for()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->for()Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_0
    invoke-static {p1}, Lcom/google/protobuf/return;->public(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static new(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/return$try;ZLcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/Descriptors$else;",
            "Lcom/google/protobuf/return$try;",
            "Z",
            "Lcom/google/protobuf/Internal$EnumVerifier;",
            ")",
            "Lcom/google/protobuf/d;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->catch()Lcom/google/protobuf/Descriptors$break;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/google/protobuf/return$try;->do(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$break;)Lcom/google/protobuf/n0;

    move-result-object v3

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/return;->super(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/g;

    move-result-object v2

    .line 3
    invoke-static {p0, p1, v2}, Lcom/google/protobuf/return;->while(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/g;)Ljava/lang/Class;

    move-result-object v4

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result v1

    move v5, p3

    move-object v6, p4

    .line 5
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/d;->case(ILcom/google/protobuf/g;Lcom/google/protobuf/n0;Ljava/lang/Class;ZLcom/google/protobuf/Internal$EnumVerifier;)Lcom/google/protobuf/d;

    move-result-object p0

    return-object p0
.end method

.method private static public(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/return;->static(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static return(Lcom/google/protobuf/Descriptors$if;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/return;->new:Lcom/google/protobuf/return$new;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/return$new;->for(Lcom/google/protobuf/Descriptors$if;)Z

    move-result p0

    return p0
.end method

.method private static static(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_0

    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    .line 4
    :cond_0
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 6
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    .line 7
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static super(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/g;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/protobuf/return$for;->for:[I

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported field type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lcom/google/protobuf/g;->UINT64:Lcom/google/protobuf/g;

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/protobuf/g;->UINT64_LIST_PACKED:Lcom/google/protobuf/g;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/protobuf/g;->UINT64_LIST:Lcom/google/protobuf/g;

    :goto_0
    return-object p0

    .line 6
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    sget-object p0, Lcom/google/protobuf/g;->UINT32:Lcom/google/protobuf/g;

    return-object p0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/google/protobuf/g;->UINT32_LIST_PACKED:Lcom/google/protobuf/g;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/google/protobuf/g;->UINT32_LIST:Lcom/google/protobuf/g;

    :goto_1
    return-object p0

    .line 9
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/google/protobuf/g;->STRING_LIST:Lcom/google/protobuf/g;

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/google/protobuf/g;->STRING:Lcom/google/protobuf/g;

    :goto_2
    return-object p0

    .line 10
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11
    sget-object p0, Lcom/google/protobuf/g;->SINT64:Lcom/google/protobuf/g;

    return-object p0

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/google/protobuf/g;->SINT64_LIST_PACKED:Lcom/google/protobuf/g;

    goto :goto_3

    :cond_6
    sget-object p0, Lcom/google/protobuf/g;->SINT64_LIST:Lcom/google/protobuf/g;

    :goto_3
    return-object p0

    .line 13
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_7

    .line 14
    sget-object p0, Lcom/google/protobuf/g;->SINT32:Lcom/google/protobuf/g;

    return-object p0

    .line 15
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/google/protobuf/g;->SINT32_LIST_PACKED:Lcom/google/protobuf/g;

    goto :goto_4

    :cond_8
    sget-object p0, Lcom/google/protobuf/g;->SINT32_LIST:Lcom/google/protobuf/g;

    :goto_4
    return-object p0

    .line 16
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_9

    .line 17
    sget-object p0, Lcom/google/protobuf/g;->SFIXED64:Lcom/google/protobuf/g;

    return-object p0

    .line 18
    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Lcom/google/protobuf/g;->SFIXED64_LIST_PACKED:Lcom/google/protobuf/g;

    goto :goto_5

    :cond_a
    sget-object p0, Lcom/google/protobuf/g;->SFIXED64_LIST:Lcom/google/protobuf/g;

    :goto_5
    return-object p0

    .line 19
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_b

    .line 20
    sget-object p0, Lcom/google/protobuf/g;->SFIXED32:Lcom/google/protobuf/g;

    return-object p0

    .line 21
    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lcom/google/protobuf/g;->SFIXED32_LIST_PACKED:Lcom/google/protobuf/g;

    goto :goto_6

    :cond_c
    sget-object p0, Lcom/google/protobuf/g;->SFIXED32_LIST:Lcom/google/protobuf/g;

    :goto_6
    return-object p0

    .line 22
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->finally()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 23
    sget-object p0, Lcom/google/protobuf/g;->MAP:Lcom/google/protobuf/g;

    return-object p0

    .line 24
    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_e

    sget-object p0, Lcom/google/protobuf/g;->MESSAGE_LIST:Lcom/google/protobuf/g;

    goto :goto_7

    :cond_e
    sget-object p0, Lcom/google/protobuf/g;->MESSAGE:Lcom/google/protobuf/g;

    :goto_7
    return-object p0

    .line 25
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_f

    .line 26
    sget-object p0, Lcom/google/protobuf/g;->INT64:Lcom/google/protobuf/g;

    return-object p0

    .line 27
    :cond_f
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_10

    sget-object p0, Lcom/google/protobuf/g;->INT64_LIST_PACKED:Lcom/google/protobuf/g;

    goto :goto_8

    :cond_10
    sget-object p0, Lcom/google/protobuf/g;->INT64_LIST:Lcom/google/protobuf/g;

    :goto_8
    return-object p0

    .line 28
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_11

    .line 29
    sget-object p0, Lcom/google/protobuf/g;->INT32:Lcom/google/protobuf/g;

    return-object p0

    .line 30
    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_12

    sget-object p0, Lcom/google/protobuf/g;->INT32_LIST_PACKED:Lcom/google/protobuf/g;

    goto :goto_9

    :cond_12
    sget-object p0, Lcom/google/protobuf/g;->INT32_LIST:Lcom/google/protobuf/g;

    :goto_9
    return-object p0

    .line 31
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_13

    sget-object p0, Lcom/google/protobuf/g;->GROUP_LIST:Lcom/google/protobuf/g;

    goto :goto_a

    :cond_13
    sget-object p0, Lcom/google/protobuf/g;->GROUP:Lcom/google/protobuf/g;

    :goto_a
    return-object p0

    .line 32
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_14

    .line 33
    sget-object p0, Lcom/google/protobuf/g;->FLOAT:Lcom/google/protobuf/g;

    return-object p0

    .line 34
    :cond_14
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_15

    sget-object p0, Lcom/google/protobuf/g;->FLOAT_LIST_PACKED:Lcom/google/protobuf/g;

    goto :goto_b

    :cond_15
    sget-object p0, Lcom/google/protobuf/g;->FLOAT_LIST:Lcom/google/protobuf/g;

    :goto_b
    return-object p0

    .line 35
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_16

    .line 36
    sget-object p0, Lcom/google/protobuf/g;->FIXED64:Lcom/google/protobuf/g;

    return-object p0

    .line 37
    :cond_16
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_17

    sget-object p0, Lcom/google/protobuf/g;->FIXED64_LIST_PACKED:Lcom/google/protobuf/g;

    goto :goto_c

    :cond_17
    sget-object p0, Lcom/google/protobuf/g;->FIXED64_LIST:Lcom/google/protobuf/g;

    :goto_c
    return-object p0

    .line 38
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_18

    .line 39
    sget-object p0, Lcom/google/protobuf/g;->FIXED32:Lcom/google/protobuf/g;

    return-object p0

    .line 40
    :cond_18
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_19

    sget-object p0, Lcom/google/protobuf/g;->FIXED32_LIST_PACKED:Lcom/google/protobuf/g;

    goto :goto_d

    :cond_19
    sget-object p0, Lcom/google/protobuf/g;->FIXED32_LIST:Lcom/google/protobuf/g;

    :goto_d
    return-object p0

    .line 41
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 42
    sget-object p0, Lcom/google/protobuf/g;->ENUM:Lcom/google/protobuf/g;

    return-object p0

    .line 43
    :cond_1a
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_1b

    sget-object p0, Lcom/google/protobuf/g;->ENUM_LIST_PACKED:Lcom/google/protobuf/g;

    goto :goto_e

    :cond_1b
    sget-object p0, Lcom/google/protobuf/g;->ENUM_LIST:Lcom/google/protobuf/g;

    :goto_e
    return-object p0

    .line 44
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 45
    sget-object p0, Lcom/google/protobuf/g;->DOUBLE:Lcom/google/protobuf/g;

    return-object p0

    .line 46
    :cond_1c
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_1d

    sget-object p0, Lcom/google/protobuf/g;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/g;

    goto :goto_f

    :cond_1d
    sget-object p0, Lcom/google/protobuf/g;->DOUBLE_LIST:Lcom/google/protobuf/g;

    :goto_f
    return-object p0

    .line 47
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_1e

    sget-object p0, Lcom/google/protobuf/g;->BYTES_LIST:Lcom/google/protobuf/g;

    goto :goto_10

    :cond_1e
    sget-object p0, Lcom/google/protobuf/g;->BYTES:Lcom/google/protobuf/g;

    :goto_10
    return-object p0

    .line 48
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 49
    sget-object p0, Lcom/google/protobuf/g;->BOOL:Lcom/google/protobuf/g;

    return-object p0

    .line 50
    :cond_1f
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_20

    sget-object p0, Lcom/google/protobuf/g;->BOOL_LIST_PACKED:Lcom/google/protobuf/g;

    goto :goto_11

    :cond_20
    sget-object p0, Lcom/google/protobuf/g;->BOOL_LIST:Lcom/google/protobuf/g;

    :goto_11
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static this(Ljava/lang/Class;)Lcom/google/protobuf/Descriptors$if;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/protobuf/Descriptors$if;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/return;->const(Ljava/lang/Class;)Lcom/google/protobuf/Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

    move-result-object p0

    return-object p0
.end method

.method public static throw()Lcom/google/protobuf/return;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/return;->if:Lcom/google/protobuf/return;

    return-object v0
.end method

.method private static try(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$else;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/Descriptors$else;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/return;->class(Lcom/google/protobuf/Descriptors$else;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/protobuf/return;->catch(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method private static while(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/g;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/Descriptors$else;",
            "Lcom/google/protobuf/g;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/return$for;->if:[I

    invoke-virtual {p2}, Lcom/google/protobuf/g;->getJavaType()Lcom/google/protobuf/p;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Invalid type for oneof: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_0
    invoke-static {p0, p1}, Lcom/google/protobuf/return;->import(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_1
    const-class p0, Ljava/lang/String;

    return-object p0

    .line 5
    :pswitch_2
    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 6
    :pswitch_3
    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 7
    :pswitch_4
    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 8
    :pswitch_5
    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 9
    :pswitch_6
    const-class p0, Lcom/google/protobuf/ByteString;

    return-object p0

    .line 10
    :pswitch_7
    const-class p0, Ljava/lang/Boolean;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public isSupported(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/protobuf/GeneratedMessageV3;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public messageInfoFor(Ljava/lang/Class;)Lcom/google/protobuf/MessageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/protobuf/MessageInfo;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/protobuf/GeneratedMessageV3;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported message type: "

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/return;->this(Ljava/lang/Class;)Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/return;->case(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/MessageInfo;

    move-result-object p1

    return-object p1
.end method
