.class public final Lcom/google/protobuf/Descriptors$try;
.super Lcom/google/protobuf/Descriptors$goto;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/Descriptors$goto;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/protobuf/Descriptors$case;",
        ">;"
    }
.end annotation


# instance fields
.field private case:[Lcom/google/protobuf/Descriptors$case;

.field private final do:I

.field private final else:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/protobuf/Descriptors$case;",
            ">;>;"
        }
    .end annotation
.end field

.field private final for:Ljava/lang/String;

.field private if:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

.field private final new:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private final try:Lcom/google/protobuf/Descriptors$if;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$goto;-><init>(Lcom/google/protobuf/Descriptors$do;)V

    .line 3
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/protobuf/Descriptors$try;->else:Ljava/util/WeakHashMap;

    .line 4
    iput p4, p0, Lcom/google/protobuf/Descriptors$try;->do:I

    .line 5
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$try;->if:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/google/protobuf/Descriptors;->if(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/google/protobuf/Descriptors$try;->for:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$try;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 8
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$try;->try:Lcom/google/protobuf/Descriptors$if;

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueCount()I

    move-result p3

    if-eqz p3, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueCount()I

    move-result p3

    new-array p3, p3, [Lcom/google/protobuf/Descriptors$case;

    iput-object p3, p0, Lcom/google/protobuf/Descriptors$try;->case:[Lcom/google/protobuf/Descriptors$case;

    const/4 p3, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueCount()I

    move-result p4

    if-ge p3, p4, :cond_0

    .line 12
    iget-object p4, p0, Lcom/google/protobuf/Descriptors$try;->case:[Lcom/google/protobuf/Descriptors$case;

    new-instance v6, Lcom/google/protobuf/Descriptors$case;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getValue(I)Lcom/google/protobuf/DescriptorProtos$for;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p2

    move-object v3, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/Descriptors$case;-><init>(Lcom/google/protobuf/DescriptorProtos$for;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$try;ILcom/google/protobuf/Descriptors$do;)V

    aput-object v6, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->try(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$for;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/Descriptors$for;->case(Lcom/google/protobuf/Descriptors$goto;)V

    return-void

    .line 14
    :cond_1
    new-instance p1, Lcom/google/protobuf/Descriptors$new;

    const-string p2, "Enums must contain at least one value."

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;ILcom/google/protobuf/Descriptors$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Descriptors$try;-><init>(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;I)V

    return-void
.end method

.method private final(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$try;->if:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$try;->case:[Lcom/google/protobuf/Descriptors$case;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3
    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getValue(I)Lcom/google/protobuf/DescriptorProtos$for;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/Descriptors$case;->try(Lcom/google/protobuf/Descriptors$case;Lcom/google/protobuf/DescriptorProtos$for;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic try(Lcom/google/protobuf/Descriptors$try;Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/Descriptors$try;->final(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)V

    return-void
.end method


# virtual methods
.method public break()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/Descriptors$try;->do:I

    return v0
.end method

.method public case(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$case;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$try;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->try(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$for;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$try;->for:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$for;->else(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$goto;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/Descriptors$case;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/google/protobuf/Descriptors$case;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public catch()Lcom/google/protobuf/DescriptorProtos$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$try;->if:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$if;

    move-result-object v0

    return-object v0
.end method

.method public class()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$try;->else:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    return v0
.end method

.method public const()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$case;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$try;->case:[Lcom/google/protobuf/Descriptors$case;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public do()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$try;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public else(I)Lcom/google/protobuf/Descriptors$case;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$try;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->try(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$for;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$for;->if(Lcom/google/protobuf/Descriptors$for;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/protobuf/Descriptors$for$do;

    invoke-direct {v1, p0, p1}, Lcom/google/protobuf/Descriptors$for$do;-><init>(Lcom/google/protobuf/Descriptors$goto;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$case;

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Descriptors$try;->else(I)Lcom/google/protobuf/Descriptors$case;

    move-result-object p1

    return-object p1
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$try;->if:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goto(I)Lcom/google/protobuf/Descriptors$case;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Descriptors$try;->else(I)Lcom/google/protobuf/Descriptors$case;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 4
    iget-object p1, p0, Lcom/google/protobuf/Descriptors$try;->else:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/Descriptors$case;

    :cond_1
    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lcom/google/protobuf/Descriptors$case;

    iget-object p1, p0, Lcom/google/protobuf/Descriptors$try;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/google/protobuf/Descriptors$case;-><init>(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$try;Ljava/lang/Integer;Lcom/google/protobuf/Descriptors$do;)V

    .line 7
    iget-object p1, p0, Lcom/google/protobuf/Descriptors$try;->else:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$try;->for:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic new()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$try;->super()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public super()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$try;->if:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method public this()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$try;->try:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method
