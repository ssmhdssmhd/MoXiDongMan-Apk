.class public final Lcom/google/protobuf/Descriptors$case;
.super Lcom/google/protobuf/Descriptors$goto;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "case"
.end annotation


# instance fields
.field private final do:I

.field private final for:Ljava/lang/String;

.field private if:Lcom/google/protobuf/DescriptorProtos$for;

.field private final new:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private final try:Lcom/google/protobuf/Descriptors$try;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/DescriptorProtos$for;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$try;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$goto;-><init>(Lcom/google/protobuf/Descriptors$do;)V

    .line 4
    iput p4, p0, Lcom/google/protobuf/Descriptors$case;->do:I

    .line 5
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$case;->if:Lcom/google/protobuf/DescriptorProtos$for;

    .line 6
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$case;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 7
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$case;->try:Lcom/google/protobuf/Descriptors$try;

    .line 8
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$try;->if()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$for;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$case;->for:Ljava/lang/String;

    .line 9
    invoke-static {p2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->try(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$for;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/Descriptors$for;->case(Lcom/google/protobuf/Descriptors$goto;)V

    .line 10
    invoke-static {p2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->try(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$for;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/Descriptors$for;->for(Lcom/google/protobuf/Descriptors$case;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$for;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$try;ILcom/google/protobuf/Descriptors$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Descriptors$case;-><init>(Lcom/google/protobuf/DescriptorProtos$for;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$try;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$try;Ljava/lang/Integer;)V
    .locals 4

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$goto;-><init>(Lcom/google/protobuf/Descriptors$do;)V

    .line 12
    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$try;->for()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "UNKNOWN_ENUM_VALUE_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$for;->newBuilder()Lcom/google/protobuf/DescriptorProtos$for$if;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/protobuf/DescriptorProtos$for$if;->public(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$for$if;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/google/protobuf/DescriptorProtos$for$if;->static(I)Lcom/google/protobuf/DescriptorProtos$for$if;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/DescriptorProtos$for$if;->if()Lcom/google/protobuf/DescriptorProtos$for;

    move-result-object p3

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/google/protobuf/Descriptors$case;->do:I

    .line 15
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$case;->if:Lcom/google/protobuf/DescriptorProtos$for;

    .line 16
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$case;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 17
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$case;->try:Lcom/google/protobuf/Descriptors$try;

    .line 18
    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$try;->if()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/google/protobuf/DescriptorProtos$for;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$case;->for:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$try;Ljava/lang/Integer;Lcom/google/protobuf/Descriptors$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/Descriptors$case;-><init>(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$try;Ljava/lang/Integer;)V

    return-void
.end method

.method private this(Lcom/google/protobuf/DescriptorProtos$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$case;->if:Lcom/google/protobuf/DescriptorProtos$for;

    return-void
.end method

.method public static synthetic try(Lcom/google/protobuf/Descriptors$case;Lcom/google/protobuf/DescriptorProtos$for;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/Descriptors$case;->this(Lcom/google/protobuf/DescriptorProtos$for;)V

    return-void
.end method


# virtual methods
.method public break()Lcom/google/protobuf/DescriptorProtos$for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$case;->if:Lcom/google/protobuf/DescriptorProtos$for;

    return-object v0
.end method

.method public case()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/Descriptors$case;->do:I

    return v0
.end method

.method public do()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$case;->new:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public else()Lcom/google/protobuf/DescriptorProtos$new;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$case;->if:Lcom/google/protobuf/DescriptorProtos$for;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$for;->getOptions()Lcom/google/protobuf/DescriptorProtos$new;

    move-result-object v0

    return-object v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$case;->if:Lcom/google/protobuf/DescriptorProtos$for;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$for;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$case;->if:Lcom/google/protobuf/DescriptorProtos$for;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$for;->getNumber()I

    move-result v0

    return v0
.end method

.method public goto()Lcom/google/protobuf/Descriptors$try;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$case;->try:Lcom/google/protobuf/Descriptors$try;

    return-object v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$case;->for:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic new()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$case;->break()Lcom/google/protobuf/DescriptorProtos$for;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$case;->if:Lcom/google/protobuf/DescriptorProtos$for;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$for;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
