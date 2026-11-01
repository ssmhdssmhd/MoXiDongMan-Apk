.class public final Lcom/google/protobuf/Descriptors$if;
.super Lcom/google/protobuf/Descriptors$goto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private final break:[Lcom/google/protobuf/Descriptors$break;

.field private final case:[Lcom/google/protobuf/Descriptors$if;

.field private final catch:I

.field private final do:I

.field private final else:[Lcom/google/protobuf/Descriptors$try;

.field private final for:Ljava/lang/String;

.field private final goto:[Lcom/google/protobuf/Descriptors$else;

.field private if:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

.field private final new:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private final this:[Lcom/google/protobuf/Descriptors$else;

.field private final try:Lcom/google/protobuf/Descriptors$if;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$goto;-><init>(Lcom/google/protobuf/Descriptors$do;)V

    .line 22
    iput p4, p0, Lcom/google/protobuf/Descriptors$if;->do:I

    .line 23
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$if;->if:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    .line 24
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/google/protobuf/Descriptors;->if(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/google/protobuf/Descriptors$if;->for:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$if;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 26
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$if;->try:Lcom/google/protobuf/Descriptors$if;

    .line 27
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result p3

    new-array p3, p3, [Lcom/google/protobuf/Descriptors$break;

    iput-object p3, p0, Lcom/google/protobuf/Descriptors$if;->break:[Lcom/google/protobuf/Descriptors$break;

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 28
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result v1

    if-ge p4, v1, :cond_0

    .line 29
    iget-object v7, p0, Lcom/google/protobuf/Descriptors$if;->break:[Lcom/google/protobuf/Descriptors$break;

    new-instance v8, Lcom/google/protobuf/Descriptors$break;

    invoke-virtual {p1, p4}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOneofDecl(I)Lcom/google/protobuf/DescriptorProtos$final;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, v8

    move-object v3, p2

    move-object v4, p0

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/Descriptors$break;-><init>(Lcom/google/protobuf/DescriptorProtos$final;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;ILcom/google/protobuf/Descriptors$do;)V

    aput-object v8, v7, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeCount()I

    move-result p4

    new-array p4, p4, [Lcom/google/protobuf/Descriptors$if;

    iput-object p4, p0, Lcom/google/protobuf/Descriptors$if;->case:[Lcom/google/protobuf/Descriptors$if;

    const/4 p4, 0x0

    .line 31
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeCount()I

    move-result v1

    if-ge p4, v1, :cond_1

    .line 32
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$if;->case:[Lcom/google/protobuf/Descriptors$if;

    new-instance v2, Lcom/google/protobuf/Descriptors$if;

    invoke-virtual {p1, p4}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getNestedType(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-direct {v2, v3, p2, p0, p4}, Lcom/google/protobuf/Descriptors$if;-><init>(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;I)V

    aput-object v2, v1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeCount()I

    move-result p4

    new-array p4, p4, [Lcom/google/protobuf/Descriptors$try;

    iput-object p4, p0, Lcom/google/protobuf/Descriptors$if;->else:[Lcom/google/protobuf/Descriptors$try;

    const/4 p4, 0x0

    .line 34
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeCount()I

    move-result v1

    if-ge p4, v1, :cond_2

    .line 35
    iget-object v7, p0, Lcom/google/protobuf/Descriptors$if;->else:[Lcom/google/protobuf/Descriptors$try;

    new-instance v8, Lcom/google/protobuf/Descriptors$try;

    invoke-virtual {p1, p4}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getEnumType(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, v8

    move-object v3, p2

    move-object v4, p0

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/Descriptors$try;-><init>(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;ILcom/google/protobuf/Descriptors$do;)V

    aput-object v8, v7, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 36
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result p4

    new-array p4, p4, [Lcom/google/protobuf/Descriptors$else;

    iput-object p4, p0, Lcom/google/protobuf/Descriptors$if;->goto:[Lcom/google/protobuf/Descriptors$else;

    const/4 p4, 0x0

    .line 37
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result v1

    if-ge p4, v1, :cond_3

    .line 38
    iget-object v8, p0, Lcom/google/protobuf/Descriptors$if;->goto:[Lcom/google/protobuf/Descriptors$else;

    new-instance v9, Lcom/google/protobuf/Descriptors$else;

    invoke-virtual {p1, p4}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getField(I)Lcom/google/protobuf/DescriptorProtos$case;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move-object v3, p2

    move-object v4, p0

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/protobuf/Descriptors$else;-><init>(Lcom/google/protobuf/DescriptorProtos$case;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;IZLcom/google/protobuf/Descriptors$do;)V

    aput-object v9, v8, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 39
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getExtensionCount()I

    move-result p4

    new-array p4, p4, [Lcom/google/protobuf/Descriptors$else;

    iput-object p4, p0, Lcom/google/protobuf/Descriptors$if;->this:[Lcom/google/protobuf/Descriptors$else;

    const/4 p4, 0x0

    .line 40
    :goto_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getExtensionCount()I

    move-result v1

    if-ge p4, v1, :cond_4

    .line 41
    iget-object v8, p0, Lcom/google/protobuf/Descriptors$if;->this:[Lcom/google/protobuf/Descriptors$else;

    new-instance v9, Lcom/google/protobuf/Descriptors$else;

    invoke-virtual {p1, p4}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getExtension(I)Lcom/google/protobuf/DescriptorProtos$case;

    move-result-object v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v9

    move-object v3, p2

    move-object v4, p0

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/protobuf/Descriptors$else;-><init>(Lcom/google/protobuf/DescriptorProtos$case;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;IZLcom/google/protobuf/Descriptors$do;)V

    aput-object v9, v8, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_4
    const/4 p4, 0x0

    .line 42
    :goto_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result v1

    if-ge p4, v1, :cond_5

    .line 43
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$if;->break:[Lcom/google/protobuf/Descriptors$break;

    aget-object v2, v1, p4

    aget-object v1, v1, p4

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$break;->class()I

    move-result v1

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$else;

    invoke-static {v2, v1}, Lcom/google/protobuf/Descriptors$break;->case(Lcom/google/protobuf/Descriptors$break;[Lcom/google/protobuf/Descriptors$else;)[Lcom/google/protobuf/Descriptors$else;

    .line 44
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$if;->break:[Lcom/google/protobuf/Descriptors$break;

    aget-object v1, v1, p4

    invoke-static {v1, p3}, Lcom/google/protobuf/Descriptors$break;->else(Lcom/google/protobuf/Descriptors$break;I)I

    add-int/lit8 p4, p4, 0x1

    goto :goto_5

    :cond_5
    const/4 p4, 0x0

    .line 45
    :goto_6
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result v1

    if-ge p4, v1, :cond_7

    .line 46
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$if;->goto:[Lcom/google/protobuf/Descriptors$else;

    aget-object v1, v1, p4

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$else;->catch()Lcom/google/protobuf/Descriptors$break;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 47
    invoke-static {v1}, Lcom/google/protobuf/Descriptors$break;->try(Lcom/google/protobuf/Descriptors$break;)[Lcom/google/protobuf/Descriptors$else;

    move-result-object v2

    invoke-static {v1}, Lcom/google/protobuf/Descriptors$break;->goto(Lcom/google/protobuf/Descriptors$break;)I

    move-result v1

    iget-object v3, p0, Lcom/google/protobuf/Descriptors$if;->goto:[Lcom/google/protobuf/Descriptors$else;

    aget-object v3, v3, p4

    aput-object v3, v2, v1

    :cond_6
    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    .line 48
    :cond_7
    iget-object p1, p0, Lcom/google/protobuf/Descriptors$if;->break:[Lcom/google/protobuf/Descriptors$break;

    array-length p4, p1

    const/4 v1, 0x0

    :goto_7
    if-ge p3, p4, :cond_a

    aget-object v2, p1, p3

    .line 49
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$break;->throw()Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    if-gtz v1, :cond_9

    :goto_8
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    .line 50
    :cond_9
    new-instance p1, Lcom/google/protobuf/Descriptors$new;

    const-string p2, "Synthetic oneofs must come last."

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw p1

    .line 51
    :cond_a
    iget-object p1, p0, Lcom/google/protobuf/Descriptors$if;->break:[Lcom/google/protobuf/Descriptors$break;

    array-length p1, p1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/protobuf/Descriptors$if;->catch:I

    .line 52
    invoke-static {p2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->try(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$for;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/Descriptors$for;->case(Lcom/google/protobuf/Descriptors$goto;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;ILcom/google/protobuf/Descriptors$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Descriptors$if;-><init>(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$goto;-><init>(Lcom/google/protobuf/Descriptors$do;)V

    const/16 v1, 0x2e

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    move-object v3, p1

    .line 6
    :goto_0
    iput v2, p0, Lcom/google/protobuf/Descriptors$if;->do:I

    .line 7
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$if;

    move-result-object v4

    .line 8
    invoke-virtual {v4, v3}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$if;->G0(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$if;

    move-result-object v3

    .line 9
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;->newBuilder()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->throws(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object v4

    const/high16 v5, 0x20000000

    invoke-virtual {v4, v5}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->native(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for$if;->if()Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;

    move-result-object v4

    .line 10
    invoke-virtual {v3, v4}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$if;->throws(Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;)Lcom/google/protobuf/DescriptorProtos$DescriptorProto$if;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$if;->o()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protobuf/Descriptors$if;->if:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    .line 12
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$if;->for:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/google/protobuf/Descriptors$if;->try:Lcom/google/protobuf/Descriptors$if;

    new-array p1, v2, [Lcom/google/protobuf/Descriptors$if;

    .line 14
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$if;->case:[Lcom/google/protobuf/Descriptors$if;

    new-array p1, v2, [Lcom/google/protobuf/Descriptors$try;

    .line 15
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$if;->else:[Lcom/google/protobuf/Descriptors$try;

    new-array p1, v2, [Lcom/google/protobuf/Descriptors$else;

    .line 16
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$if;->goto:[Lcom/google/protobuf/Descriptors$else;

    new-array p1, v2, [Lcom/google/protobuf/Descriptors$else;

    .line 17
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$if;->this:[Lcom/google/protobuf/Descriptors$else;

    new-array p1, v2, [Lcom/google/protobuf/Descriptors$break;

    .line 18
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$if;->break:[Lcom/google/protobuf/Descriptors$break;

    .line 19
    iput v2, p0, Lcom/google/protobuf/Descriptors$if;->catch:I

    .line 20
    new-instance p1, Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-direct {p1, v1, p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;-><init>(Ljava/lang/String;Lcom/google/protobuf/Descriptors$if;)V

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$if;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static synthetic case(Lcom/google/protobuf/Descriptors$if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/Descriptors$if;->else()V

    return-void
.end method

.method private default(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$if;->if:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$if;->case:[Lcom/google/protobuf/Descriptors$if;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3
    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getNestedType(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/protobuf/Descriptors$if;->default(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$if;->break:[Lcom/google/protobuf/Descriptors$break;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5
    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOneofDecl(I)Lcom/google/protobuf/DescriptorProtos$final;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/Descriptors$break;->this(Lcom/google/protobuf/Descriptors$break;Lcom/google/protobuf/DescriptorProtos$final;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$if;->else:[Lcom/google/protobuf/Descriptors$try;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 7
    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getEnumType(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/Descriptors$try;->try(Lcom/google/protobuf/Descriptors$try;Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 8
    :goto_3
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$if;->goto:[Lcom/google/protobuf/Descriptors$else;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 9
    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getField(I)Lcom/google/protobuf/DescriptorProtos$case;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/Descriptors$else;->case(Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/DescriptorProtos$case;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 10
    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$if;->this:[Lcom/google/protobuf/Descriptors$else;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 11
    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getExtension(I)Lcom/google/protobuf/DescriptorProtos$case;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/Descriptors$else;->case(Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/DescriptorProtos$case;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method private else()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->case:[Lcom/google/protobuf/Descriptors$if;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 2
    invoke-direct {v4}, Lcom/google/protobuf/Descriptors$if;->else()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->goto:[Lcom/google/protobuf/Descriptors$else;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 4
    invoke-static {v4}, Lcom/google/protobuf/Descriptors$else;->try(Lcom/google/protobuf/Descriptors$else;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->this:[Lcom/google/protobuf/Descriptors$else;

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

.method public static synthetic try(Lcom/google/protobuf/Descriptors$if;Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/Descriptors$if;->default(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)V

    return-void
.end method


# virtual methods
.method public break(I)Lcom/google/protobuf/Descriptors$else;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->try(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$for;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$for;->do(Lcom/google/protobuf/Descriptors$for;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/protobuf/Descriptors$for$do;

    invoke-direct {v1, p0, p1}, Lcom/google/protobuf/Descriptors$for$do;-><init>(Lcom/google/protobuf/Descriptors$goto;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$else;

    return-object p1
.end method

.method public catch(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$if;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->try(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$for;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$if;->for:Ljava/lang/String;

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
    instance-of v0, p1, Lcom/google/protobuf/Descriptors$if;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/google/protobuf/Descriptors$if;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public class()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->try:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public const()Ljava/util/List;
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
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->else:[Lcom/google/protobuf/Descriptors$try;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public do()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public extends()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->if:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public final()Ljava/util/List;
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
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->this:[Lcom/google/protobuf/Descriptors$else;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->if:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goto(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$try;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->try(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$for;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$if;->for:Ljava/lang/String;

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
    instance-of v0, p1, Lcom/google/protobuf/Descriptors$try;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/google/protobuf/Descriptors$try;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->for:Ljava/lang/String;

    return-object v0
.end method

.method public import()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$break;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->break:[Lcom/google/protobuf/Descriptors$break;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public native()Lcom/google/protobuf/DescriptorProtos$catch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->if:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$catch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic new()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$if;->extends()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public public()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$break;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->break:[Lcom/google/protobuf/Descriptors$break;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/Descriptors$if;->catch:I

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public return()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->if:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->if:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;

    .line 2
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;->getStart()I

    move-result v2

    if-gt v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$for;->getEnd()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public super()Ljava/util/List;
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
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->goto:[Lcom/google/protobuf/Descriptors$else;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public switch(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/Internal;->new(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->if:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getReservedNameList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public this(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$else;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->try(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$for;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$if;->for:Ljava/lang/String;

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
    instance-of v0, p1, Lcom/google/protobuf/Descriptors$else;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/google/protobuf/Descriptors$else;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public throw()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/Descriptors$if;->do:I

    return v0
.end method

.method public throws(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->if:Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getReservedRangeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$new;

    .line 2
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$new;->getStart()I

    move-result v2

    if-gt v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$new;->getEnd()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
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
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$if;->case:[Lcom/google/protobuf/Descriptors$if;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
