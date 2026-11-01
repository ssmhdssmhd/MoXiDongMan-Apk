.class public final Lcom/google/protobuf/Descriptors$FileDescriptor;
.super Lcom/google/protobuf/Descriptors$goto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;,
        Lcom/google/protobuf/Descriptors$FileDescriptor$do;
    }
.end annotation


# instance fields
.field private final case:[Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private do:Lcom/google/protobuf/DescriptorProtos$goto;

.field private final else:[Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private final for:[Lcom/google/protobuf/Descriptors$try;

.field private final goto:Lcom/google/protobuf/Descriptors$for;

.field private final if:[Lcom/google/protobuf/Descriptors$if;

.field private final new:[Lcom/google/protobuf/Descriptors$catch;

.field private final try:[Lcom/google/protobuf/Descriptors$else;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/DescriptorProtos$goto;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$for;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$goto;-><init>(Lcom/google/protobuf/Descriptors$do;)V

    .line 2
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->goto:Lcom/google/protobuf/Descriptors$for;

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->do:Lcom/google/protobuf/DescriptorProtos$goto;

    .line 4
    invoke-virtual {p2}, [Lcom/google/protobuf/Descriptors$FileDescriptor;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    iput-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->case:[Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p2, v4

    .line 7
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->for()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 9
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getPublicDependencyCount()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 10
    invoke-virtual {p1, v2}, Lcom/google/protobuf/DescriptorProtos$goto;->getPublicDependency(I)I

    move-result v4

    if-ltz v4, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getDependencyCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 12
    invoke-virtual {p1, v4}, Lcom/google/protobuf/DescriptorProtos$goto;->getDependency(I)Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Descriptors$FileDescriptor;

    if-nez v5, :cond_2

    if-nez p4, :cond_3

    .line 14
    new-instance p1, Lcom/google/protobuf/Descriptors$new;

    const-string p2, "Invalid public dependency: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_1
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, p3

    :goto_2
    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw p1

    .line 15
    :cond_2
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 16
    :cond_4
    new-instance p1, Lcom/google/protobuf/Descriptors$new;

    const-string p2, "Invalid public dependency index."

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw p1

    .line 17
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    new-array p4, p4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    iput-object p4, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->else:[Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 18
    invoke-interface {p2, p4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->native()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p0}, Lcom/google/protobuf/Descriptors$for;->try(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getMessageTypeCount()I

    move-result p2

    new-array p2, p2, [Lcom/google/protobuf/Descriptors$if;

    iput-object p2, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->if:[Lcom/google/protobuf/Descriptors$if;

    const/4 p2, 0x0

    .line 21
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getMessageTypeCount()I

    move-result p3

    if-ge p2, p3, :cond_6

    .line 22
    iget-object p3, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->if:[Lcom/google/protobuf/Descriptors$if;

    new-instance p4, Lcom/google/protobuf/Descriptors$if;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/DescriptorProtos$goto;->getMessageType(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p4

    move-object v6, p0

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/protobuf/Descriptors$if;-><init>(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;ILcom/google/protobuf/Descriptors$do;)V

    aput-object p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 23
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getEnumTypeCount()I

    move-result p2

    new-array p2, p2, [Lcom/google/protobuf/Descriptors$try;

    iput-object p2, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->for:[Lcom/google/protobuf/Descriptors$try;

    const/4 p2, 0x0

    .line 24
    :goto_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getEnumTypeCount()I

    move-result p3

    if-ge p2, p3, :cond_7

    .line 25
    iget-object p3, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->for:[Lcom/google/protobuf/Descriptors$try;

    new-instance p4, Lcom/google/protobuf/Descriptors$try;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/DescriptorProtos$goto;->getEnumType(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p4

    move-object v6, p0

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/protobuf/Descriptors$try;-><init>(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;ILcom/google/protobuf/Descriptors$do;)V

    aput-object p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 26
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getServiceCount()I

    move-result p2

    new-array p2, p2, [Lcom/google/protobuf/Descriptors$catch;

    iput-object p2, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->new:[Lcom/google/protobuf/Descriptors$catch;

    const/4 p2, 0x0

    .line 27
    :goto_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getServiceCount()I

    move-result p3

    if-ge p2, p3, :cond_8

    .line 28
    iget-object p3, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->new:[Lcom/google/protobuf/Descriptors$catch;

    new-instance p4, Lcom/google/protobuf/Descriptors$catch;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/DescriptorProtos$goto;->getService(I)Lcom/google/protobuf/DescriptorProtos$throw;

    move-result-object v1

    invoke-direct {p4, v1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$catch;-><init>(Lcom/google/protobuf/DescriptorProtos$throw;Lcom/google/protobuf/Descriptors$FileDescriptor;ILcom/google/protobuf/Descriptors$do;)V

    aput-object p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 29
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getExtensionCount()I

    move-result p2

    new-array p2, p2, [Lcom/google/protobuf/Descriptors$else;

    iput-object p2, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->try:[Lcom/google/protobuf/Descriptors$else;

    .line 30
    :goto_6
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$goto;->getExtensionCount()I

    move-result p2

    if-ge v3, p2, :cond_9

    .line 31
    iget-object p2, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->try:[Lcom/google/protobuf/Descriptors$else;

    new-instance p3, Lcom/google/protobuf/Descriptors$else;

    invoke-virtual {p1, v3}, Lcom/google/protobuf/DescriptorProtos$goto;->getExtension(I)Lcom/google/protobuf/DescriptorProtos$case;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, p3

    move-object v6, p0

    move v8, v3

    invoke-direct/range {v4 .. v10}, Lcom/google/protobuf/Descriptors$else;-><init>(Lcom/google/protobuf/DescriptorProtos$case;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;IZLcom/google/protobuf/Descriptors$do;)V

    aput-object p3, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/protobuf/Descriptors$if;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$goto;-><init>(Lcom/google/protobuf/Descriptors$do;)V

    .line 33
    new-instance v0, Lcom/google/protobuf/Descriptors$for;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/google/protobuf/Descriptors$for;-><init>([Lcom/google/protobuf/Descriptors$FileDescriptor;Z)V

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->goto:Lcom/google/protobuf/Descriptors$for;

    .line 34
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$goto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$goto$if;

    move-result-object v2

    .line 35
    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".placeholder.proto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/protobuf/DescriptorProtos$goto$if;->g0(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$goto$if;

    move-result-object v2

    .line 36
    invoke-virtual {v2, p1}, Lcom/google/protobuf/DescriptorProtos$goto$if;->k0(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$goto$if;

    move-result-object v2

    .line 37
    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$if;->extends()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/protobuf/DescriptorProtos$goto$if;->default(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Lcom/google/protobuf/DescriptorProtos$goto$if;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$goto$if;->implements()Lcom/google/protobuf/DescriptorProtos$goto;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->do:Lcom/google/protobuf/DescriptorProtos$goto;

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 39
    iput-object v2, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->case:[Lcom/google/protobuf/Descriptors$FileDescriptor;

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 40
    iput-object v2, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->else:[Lcom/google/protobuf/Descriptors$FileDescriptor;

    new-array v2, v3, [Lcom/google/protobuf/Descriptors$if;

    aput-object p2, v2, v1

    .line 41
    iput-object v2, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->if:[Lcom/google/protobuf/Descriptors$if;

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$try;

    .line 42
    iput-object v2, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->for:[Lcom/google/protobuf/Descriptors$try;

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$catch;

    .line 43
    iput-object v2, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->new:[Lcom/google/protobuf/Descriptors$catch;

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$else;

    .line 44
    iput-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->try:[Lcom/google/protobuf/Descriptors$else;

    .line 45
    invoke-virtual {v0, p1, p0}, Lcom/google/protobuf/Descriptors$for;->try(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    .line 46
    invoke-virtual {v0, p2}, Lcom/google/protobuf/Descriptors$for;->case(Lcom/google/protobuf/Descriptors$goto;)V

    return-void
.end method

.method public static case(Lcom/google/protobuf/DescriptorProtos$goto;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->else(Lcom/google/protobuf/DescriptorProtos$goto;[Lcom/google/protobuf/Descriptors$FileDescriptor;Z)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static default([Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/Descriptors$FileDescriptor;->this(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;)[Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    .line 2
    invoke-static {p0, p1, p4}, Lcom/google/protobuf/Descriptors$FileDescriptor;->extends([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    return-void
.end method

.method public static else(Lcom/google/protobuf/DescriptorProtos$goto;[Lcom/google/protobuf/Descriptors$FileDescriptor;Z)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/Descriptors$for;

    invoke-direct {v0, p1, p2}, Lcom/google/protobuf/Descriptors$for;-><init>([Lcom/google/protobuf/Descriptors$FileDescriptor;Z)V

    .line 2
    new-instance v1, Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/protobuf/Descriptors$FileDescriptor;-><init>(Lcom/google/protobuf/DescriptorProtos$goto;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$for;Z)V

    .line 3
    invoke-direct {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->goto()V

    return-object v1
.end method

.method public static extends([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Failed to parse protocol buffer descriptor for generated code."

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->package([Ljava/lang/String;)[B

    move-result-object p0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->parseFrom([B)Lcom/google/protobuf/DescriptorProtos$goto;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x1

    .line 3
    :try_start_1
    invoke-static {v1, p1, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->else(Lcom/google/protobuf/DescriptorProtos$goto;[Lcom/google/protobuf/Descriptors$FileDescriptor;Z)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/protobuf/Descriptors$new; {:try_start_1 .. :try_end_1} :catch_1

    .line 4
    invoke-interface {p2, p1}, Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;->assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/protected;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    :try_start_2
    invoke-static {p0, p2}, Lcom/google/protobuf/DescriptorProtos$goto;->parseFrom([BLcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$goto;

    move-result-object p0
    :try_end_2
    .catch Lcom/google/protobuf/n; {:try_start_2 .. :try_end_2} :catch_0

    .line 6
    invoke-direct {p1, p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->private(Lcom/google/protobuf/DescriptorProtos$goto;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-void

    :catch_1
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$goto;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid embedded descriptor for \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static finally(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/protected;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->do:Lcom/google/protobuf/DescriptorProtos$goto;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$goto;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/implements;)Lcom/google/protobuf/DescriptorProtos$goto;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->private(Lcom/google/protobuf/DescriptorProtos$goto;)V

    return-void

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to parse protocol buffer descriptor for generated code."

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private goto()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->if:[Lcom/google/protobuf/Descriptors$if;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 2
    invoke-static {v4}, Lcom/google/protobuf/Descriptors$if;->case(Lcom/google/protobuf/Descriptors$if;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->new:[Lcom/google/protobuf/Descriptors$catch;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 4
    invoke-static {v4}, Lcom/google/protobuf/Descriptors$catch;->case(Lcom/google/protobuf/Descriptors$catch;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->try:[Lcom/google/protobuf/Descriptors$else;

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 6
    invoke-static {v3}, Lcom/google/protobuf/Descriptors$else;->try(Lcom/google/protobuf/Descriptors$else;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private static package([Ljava/lang/String;)[B
    .locals 4

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    aget-object p0, p0, v1

    sget-object v0, Lcom/google/protobuf/Internal;->if:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/Internal;->if:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method private private(Lcom/google/protobuf/DescriptorProtos$goto;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->do:Lcom/google/protobuf/DescriptorProtos$goto;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->if:[Lcom/google/protobuf/Descriptors$if;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3
    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/DescriptorProtos$goto;->getMessageType(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/Descriptors$if;->try(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->for:[Lcom/google/protobuf/Descriptors$try;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5
    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/DescriptorProtos$goto;->getEnumType(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/Descriptors$try;->try(Lcom/google/protobuf/Descriptors$try;Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->new:[Lcom/google/protobuf/Descriptors$catch;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 7
    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/DescriptorProtos$goto;->getService(I)Lcom/google/protobuf/DescriptorProtos$throw;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/Descriptors$catch;->try(Lcom/google/protobuf/Descriptors$catch;Lcom/google/protobuf/DescriptorProtos$throw;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->try:[Lcom/google/protobuf/Descriptors$else;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 9
    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/DescriptorProtos$goto;->getExtension(I)Lcom/google/protobuf/DescriptorProtos$case;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/Descriptors$else;->case(Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/DescriptorProtos$case;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static switch([Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/protobuf/Descriptors$FileDescriptor;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/Descriptors$FileDescriptor;->this(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;)[Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->throws([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private static this(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;)[Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")[",
            "Lcom/google/protobuf/Descriptors$FileDescriptor;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "descriptor"

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5
    :catch_0
    invoke-static {}, Lcom/google/protobuf/Descriptors;->do()Ljava/util/logging/Logger;

    move-result-object v3

    aget-object v4, p2, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x24

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Descriptors for \""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" can not be found."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array p0, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 6
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static throws([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->package([Ljava/lang/String;)[B

    move-result-object p0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->parseFrom([B)Lcom/google/protobuf/DescriptorProtos$goto;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    .line 3
    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->else(Lcom/google/protobuf/DescriptorProtos$goto;[Lcom/google/protobuf/Descriptors$FileDescriptor;Z)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p0
    :try_end_1
    .catch Lcom/google/protobuf/Descriptors$new; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$goto;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid embedded descriptor for \""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to parse protocol buffer descriptor for generated code."

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic try(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$for;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->goto:Lcom/google/protobuf/Descriptors$for;

    return-object p0
.end method


# virtual methods
.method public abstract()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->static()Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FileDescriptor$do;->PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public break(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$try;
    .locals 5

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    return-object v2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->native()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->goto:Lcom/google/protobuf/Descriptors$for;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$for;->else(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$goto;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    instance-of v0, p1, Lcom/google/protobuf/Descriptors$try;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$goto;->do()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 7
    check-cast p1, Lcom/google/protobuf/Descriptors$try;

    return-object p1

    :cond_2
    return-object v2
.end method

.method public catch(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$else;
    .locals 5

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    return-object v2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->native()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->goto:Lcom/google/protobuf/Descriptors$for;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$for;->else(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$goto;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    instance-of v0, p1, Lcom/google/protobuf/Descriptors$else;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$goto;->do()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 7
    check-cast p1, Lcom/google/protobuf/Descriptors$else;

    return-object p1

    :cond_2
    return-object v2
.end method

.method public class(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$if;
    .locals 5

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    return-object v2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->native()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->goto:Lcom/google/protobuf/Descriptors$for;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$for;->else(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$goto;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    instance-of v0, p1, Lcom/google/protobuf/Descriptors$if;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$goto;->do()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 7
    check-cast p1, Lcom/google/protobuf/Descriptors$if;

    return-object p1

    :cond_2
    return-object v2
.end method

.method public const(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$catch;
    .locals 5

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    return-object v2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->native()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->goto:Lcom/google/protobuf/Descriptors$for;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$for;->else(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$goto;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    instance-of v0, p1, Lcom/google/protobuf/Descriptors$catch;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$goto;->do()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 7
    check-cast p1, Lcom/google/protobuf/Descriptors$catch;

    return-object p1

    :cond_2
    return-object v2
.end method

.method public continue()Lcom/google/protobuf/DescriptorProtos$goto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->do:Lcom/google/protobuf/DescriptorProtos$goto;

    return-object v0
.end method

.method public do()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    return-object p0
.end method

.method public final()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$FileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->case:[Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->do:Lcom/google/protobuf/DescriptorProtos$goto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$goto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->do:Lcom/google/protobuf/DescriptorProtos$goto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$goto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public import()Lcom/google/protobuf/DescriptorProtos$break;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->do:Lcom/google/protobuf/DescriptorProtos$goto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$goto;->getOptions()Lcom/google/protobuf/DescriptorProtos$break;

    move-result-object v0

    return-object v0
.end method

.method public native()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->do:Lcom/google/protobuf/DescriptorProtos$goto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$goto;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic new()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->continue()Lcom/google/protobuf/DescriptorProtos$goto;

    move-result-object v0

    return-object v0
.end method

.method public public()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$FileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->else:[Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public return()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$catch;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->new:[Lcom/google/protobuf/Descriptors$catch;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static()Lcom/google/protobuf/Descriptors$FileDescriptor$do;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/protobuf/Descriptors$FileDescriptor$do;->PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor$do;->access$000(Lcom/google/protobuf/Descriptors$FileDescriptor$do;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->do:Lcom/google/protobuf/DescriptorProtos$goto;

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$goto;->getSyntax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Lcom/google/protobuf/Descriptors$FileDescriptor$do;->PROTO2:Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    return-object v0
.end method

.method public super()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$try;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->for:[Lcom/google/protobuf/Descriptors$try;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public throw()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$else;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->try:[Lcom/google/protobuf/Descriptors$else;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public while()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$if;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->if:[Lcom/google/protobuf/Descriptors$if;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
