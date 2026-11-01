.class public final Lcom/google/protobuf/Descriptors$else;
.super Lcom/google/protobuf/Descriptors$goto;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/google/protobuf/FieldSet$FieldDescriptorLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "else"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Descriptors$else$do;,
        Lcom/google/protobuf/Descriptors$else$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/Descriptors$goto;",
        "Ljava/lang/Comparable<",
        "Lcom/google/protobuf/Descriptors$else;",
        ">;",
        "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
        "Lcom/google/protobuf/Descriptors$else;",
        ">;"
    }
.end annotation


# static fields
.field private static final final:[Lcom/google/protobuf/c2$if;


# instance fields
.field private break:Lcom/google/protobuf/Descriptors$if;

.field private final case:Lcom/google/protobuf/Descriptors$if;

.field private catch:Lcom/google/protobuf/Descriptors$break;

.field private class:Lcom/google/protobuf/Descriptors$try;

.field private const:Ljava/lang/Object;

.field private final do:I

.field private final else:Z

.field private final for:Ljava/lang/String;

.field private goto:Lcom/google/protobuf/Descriptors$else$if;

.field private if:Lcom/google/protobuf/DescriptorProtos$case;

.field private final new:Ljava/lang/String;

.field private this:Lcom/google/protobuf/Descriptors$if;

.field private final try:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/protobuf/c2$if;->values()[Lcom/google/protobuf/c2$if;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/Descriptors$else;->final:[Lcom/google/protobuf/c2$if;

    .line 2
    invoke-static {}, Lcom/google/protobuf/Descriptors$else$if;->values()[Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$case$new;->values()[Lcom/google/protobuf/DescriptorProtos$case$new;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "descriptor.proto has a new declared type but Descriptors.java wasn\'t updated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lcom/google/protobuf/DescriptorProtos$case;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$goto;-><init>(Lcom/google/protobuf/Descriptors$do;)V

    .line 3
    iput p4, p0, Lcom/google/protobuf/Descriptors$else;->do:I

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/google/protobuf/Descriptors;->if(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/google/protobuf/Descriptors$else;->for:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$else;->try:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->hasJsonName()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->getJsonName()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/google/protobuf/Descriptors$else;->new:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/google/protobuf/Descriptors$else;->break(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/google/protobuf/Descriptors$else;->new:Ljava/lang/String;

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->hasType()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->getType()Lcom/google/protobuf/DescriptorProtos$case$new;

    move-result-object p4

    invoke-static {p4}, Lcom/google/protobuf/Descriptors$else$if;->valueOf(Lcom/google/protobuf/DescriptorProtos$case$new;)Lcom/google/protobuf/Descriptors$else$if;

    move-result-object p4

    iput-object p4, p0, Lcom/google/protobuf/Descriptors$else;->goto:Lcom/google/protobuf/Descriptors$else$if;

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->getProto3Optional()Z

    move-result p4

    iput-boolean p4, p0, Lcom/google/protobuf/Descriptors$else;->else:Z

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result p4

    if-lez p4, :cond_b

    if-eqz p5, :cond_5

    .line 14
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->hasExtendee()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 15
    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->this:Lcom/google/protobuf/Descriptors$if;

    if-eqz p3, :cond_2

    .line 16
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$else;->case:Lcom/google/protobuf/Descriptors$if;

    goto :goto_1

    .line 17
    :cond_2
    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->case:Lcom/google/protobuf/Descriptors$if;

    .line 18
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->hasOneofIndex()Z

    move-result p1

    if-nez p1, :cond_3

    .line 19
    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->catch:Lcom/google/protobuf/Descriptors$break;

    goto :goto_5

    .line 20
    :cond_3
    new-instance p1, Lcom/google/protobuf/Descriptors$new;

    const-string p2, "FieldDescriptorProto.oneof_index set for extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw p1

    .line 21
    :cond_4
    new-instance p1, Lcom/google/protobuf/Descriptors$new;

    const-string p2, "FieldDescriptorProto.extendee not set for extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw p1

    .line 22
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->hasExtendee()Z

    move-result p4

    if-nez p4, :cond_a

    .line 23
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$else;->this:Lcom/google/protobuf/Descriptors$if;

    .line 24
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->hasOneofIndex()Z

    move-result p4

    if-eqz p4, :cond_9

    .line 25
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->getOneofIndex()I

    move-result p4

    if-ltz p4, :cond_7

    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->getOneofIndex()I

    move-result p4

    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$if;->extends()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result p5

    if-lt p4, p5, :cond_6

    goto :goto_2

    .line 27
    :cond_6
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$if;->import()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$case;->getOneofIndex()I

    move-result p1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$break;

    iput-object p1, p0, Lcom/google/protobuf/Descriptors$else;->catch:Lcom/google/protobuf/Descriptors$break;

    .line 28
    invoke-static {p1}, Lcom/google/protobuf/Descriptors$break;->goto(Lcom/google/protobuf/Descriptors$break;)I

    goto :goto_4

    .line 29
    :cond_7
    :goto_2
    new-instance p1, Lcom/google/protobuf/Descriptors$new;

    const-string p2, "FieldDescriptorProto.oneof_index is out of range for type "

    .line 30
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$if;->for()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_8

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_8
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, p3

    :goto_3
    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw p1

    .line 31
    :cond_9
    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->catch:Lcom/google/protobuf/Descriptors$break;

    .line 32
    :goto_4
    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->case:Lcom/google/protobuf/Descriptors$if;

    .line 33
    :goto_5
    invoke-static {p2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->try(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$for;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/Descriptors$for;->case(Lcom/google/protobuf/Descriptors$goto;)V

    return-void

    .line 34
    :cond_a
    new-instance p1, Lcom/google/protobuf/Descriptors$new;

    const-string p2, "FieldDescriptorProto.extendee set for non-extension field."

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw p1

    .line 35
    :cond_b
    new-instance p1, Lcom/google/protobuf/Descriptors$new;

    const-string p2, "Field numbers must be positive integers."

    invoke-direct {p1, p0, p2, v0}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$case;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;IZLcom/google/protobuf/Descriptors$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/protobuf/Descriptors$else;-><init>(Lcom/google/protobuf/DescriptorProtos$case;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$if;IZ)V

    return-void
.end method

.method private static break(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_2

    const/16 v4, 0x61

    if-gt v4, v5, :cond_1

    const/16 v4, 0x7a

    if-gt v5, v4, :cond_1

    add-int/lit8 v5, v5, -0x61

    add-int/lit8 v5, v5, 0x41

    int-to-char v5, v5

    .line 4
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic case(Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/DescriptorProtos$case;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/Descriptors$else;->strictfp(Lcom/google/protobuf/DescriptorProtos$case;)V

    return-void
.end method

.method public static synthetic else(Lcom/google/protobuf/Descriptors$else;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/protobuf/Descriptors$else;->else:Z

    return p0
.end method

.method private strictfp(Lcom/google/protobuf/DescriptorProtos$case;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    return-void
.end method

.method private this()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->hasExtendee()Z

    move-result v0

    const-string v1, "\" is not a message type."

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->try:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->try(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$for;

    move-result-object v0

    iget-object v4, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    .line 4
    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$case;->getExtendee()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$for$for;->TYPES_ONLY:Lcom/google/protobuf/Descriptors$for$for;

    .line 5
    invoke-virtual {v0, v4, p0, v5}, Lcom/google/protobuf/Descriptors$for;->class(Ljava/lang/String;Lcom/google/protobuf/Descriptors$goto;Lcom/google/protobuf/Descriptors$for$for;)Lcom/google/protobuf/Descriptors$goto;

    move-result-object v0

    .line 6
    instance-of v4, v0, Lcom/google/protobuf/Descriptors$if;

    if-eqz v4, :cond_1

    .line 7
    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->this:Lcom/google/protobuf/Descriptors$if;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/protobuf/Descriptors$if;->static(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/google/protobuf/Descriptors$new;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x37

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" does not declare "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " as an extension number."

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw v0

    .line 12
    :cond_1
    new-instance v0, Lcom/google/protobuf/Descriptors$new;

    iget-object v4, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    .line 13
    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$case;->getExtendee()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw v0

    .line 14
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->hasTypeName()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 15
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->try:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 16
    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->try(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$for;

    move-result-object v0

    iget-object v4, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    .line 17
    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$case;->getTypeName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$for$for;->TYPES_ONLY:Lcom/google/protobuf/Descriptors$for$for;

    .line 18
    invoke-virtual {v0, v4, p0, v5}, Lcom/google/protobuf/Descriptors$for;->class(Ljava/lang/String;Lcom/google/protobuf/Descriptors$goto;Lcom/google/protobuf/Descriptors$for$for;)Lcom/google/protobuf/Descriptors$goto;

    move-result-object v0

    .line 19
    iget-object v4, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$case;->hasType()Z

    move-result v4

    if-nez v4, :cond_5

    .line 20
    instance-of v4, v0, Lcom/google/protobuf/Descriptors$if;

    if-eqz v4, :cond_3

    .line 21
    sget-object v4, Lcom/google/protobuf/Descriptors$else$if;->MESSAGE:Lcom/google/protobuf/Descriptors$else$if;

    iput-object v4, p0, Lcom/google/protobuf/Descriptors$else;->goto:Lcom/google/protobuf/Descriptors$else$if;

    goto :goto_1

    .line 22
    :cond_3
    instance-of v4, v0, Lcom/google/protobuf/Descriptors$try;

    if-eqz v4, :cond_4

    .line 23
    sget-object v4, Lcom/google/protobuf/Descriptors$else$if;->ENUM:Lcom/google/protobuf/Descriptors$else$if;

    iput-object v4, p0, Lcom/google/protobuf/Descriptors$else;->goto:Lcom/google/protobuf/Descriptors$else$if;

    goto :goto_1

    .line 24
    :cond_4
    new-instance v0, Lcom/google/protobuf/Descriptors$new;

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    .line 25
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$case;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" is not a type."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw v0

    .line 26
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v4, v5, :cond_8

    .line 27
    instance-of v4, v0, Lcom/google/protobuf/Descriptors$if;

    if-eqz v4, :cond_7

    .line 28
    check-cast v0, Lcom/google/protobuf/Descriptors$if;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->break:Lcom/google/protobuf/Descriptors$if;

    .line 29
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->hasDefaultValue()Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_2

    .line 30
    :cond_6
    new-instance v0, Lcom/google/protobuf/Descriptors$new;

    const-string v1, "Messages can\'t have default values."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw v0

    .line 31
    :cond_7
    new-instance v0, Lcom/google/protobuf/Descriptors$new;

    iget-object v4, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    .line 32
    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$case;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw v0

    .line 33
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v1

    sget-object v4, Lcom/google/protobuf/Descriptors$else$do;->ENUM:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v1, v4, :cond_a

    .line 34
    instance-of v1, v0, Lcom/google/protobuf/Descriptors$try;

    if-eqz v1, :cond_9

    .line 35
    check-cast v0, Lcom/google/protobuf/Descriptors$try;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->class:Lcom/google/protobuf/Descriptors$try;

    goto :goto_2

    .line 36
    :cond_9
    new-instance v0, Lcom/google/protobuf/Descriptors$new;

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    .line 37
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$case;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" is not an enum type."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw v0

    .line 38
    :cond_a
    new-instance v0, Lcom/google/protobuf/Descriptors$new;

    const-string v1, "Field with primitive type has type_name."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw v0

    .line 39
    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-eq v0, v1, :cond_1f

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->ENUM:Lcom/google/protobuf/Descriptors$else$do;

    if-eq v0, v1, :cond_1f

    .line 40
    :goto_2
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getOptions()Lcom/google/protobuf/DescriptorProtos$else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$else;->getPacked()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->private()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    .line 41
    :cond_c
    new-instance v0, Lcom/google/protobuf/Descriptors$new;

    const-string v1, "[packed = true] can only be specified for repeated primitive fields."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw v0

    .line 42
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->hasDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 43
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_16

    .line 44
    :try_start_0
    sget-object v0, Lcom/google/protobuf/Descriptors$do;->do:[I

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "nan"

    const-string v4, "-inf"

    const-string v5, "inf"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 45
    :pswitch_0
    :try_start_1
    new-instance v0, Lcom/google/protobuf/Descriptors$new;

    const-string v1, "Message type had default value."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw v0

    .line 46
    :pswitch_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->class:Lcom/google/protobuf/Descriptors$try;

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$try;->case(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$case;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;

    if-eqz v0, :cond_e

    goto/16 :goto_5

    .line 47
    :cond_e
    new-instance v0, Lcom/google/protobuf/Descriptors$new;

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    .line 48
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unknown enum default value: \""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/j1;->d(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/protobuf/j1$if; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    :catch_0
    move-exception v0

    .line 50
    :try_start_3
    new-instance v1, Lcom/google/protobuf/Descriptors$new;

    const-string v4, "Couldn\'t parse default value: "

    .line 51
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_f
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_4
    invoke-direct {v1, p0, v4, v0, v3}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/protobuf/Descriptors$do;)V

    throw v1

    .line 52
    :pswitch_3
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;

    goto/16 :goto_5

    .line 53
    :pswitch_4
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;

    goto/16 :goto_5

    .line 54
    :pswitch_5
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;

    goto/16 :goto_5

    .line 56
    :cond_10
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;

    goto/16 :goto_5

    .line 58
    :cond_11
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;

    goto/16 :goto_5

    .line 60
    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;

    goto/16 :goto_5

    .line 61
    :pswitch_6
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 62
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;

    goto/16 :goto_5

    .line 63
    :cond_13
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 64
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;

    goto/16 :goto_5

    .line 65
    :cond_14
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 66
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;

    goto/16 :goto_5

    .line 67
    :cond_15
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;

    goto/16 :goto_5

    .line 68
    :pswitch_7
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/j1;->switch(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;

    goto/16 :goto_5

    .line 69
    :pswitch_8
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/j1;->public(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;

    goto/16 :goto_5

    .line 70
    :pswitch_9
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/j1;->static(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;

    goto/16 :goto_5

    .line 71
    :pswitch_a
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/j1;->native(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 72
    new-instance v1, Lcom/google/protobuf/Descriptors$new;

    iget-object v4, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    .line 73
    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$case;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x21

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Could not parse default value: \""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/protobuf/Descriptors$do;)V

    throw v1

    .line 74
    :cond_16
    new-instance v0, Lcom/google/protobuf/Descriptors$new;

    const-string v1, "Repeated fields cannot have default values."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw v0

    .line 75
    :cond_17
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;

    goto :goto_5

    .line 77
    :cond_18
    sget-object v0, Lcom/google/protobuf/Descriptors$do;->if:[I

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    .line 78
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$else$do;->access$2400(Lcom/google/protobuf/Descriptors$else$do;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;

    goto :goto_5

    .line 79
    :cond_19
    iput-object v3, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;

    goto :goto_5

    .line 80
    :cond_1a
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->class:Lcom/google/protobuf/Descriptors$try;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$try;->const()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;

    .line 81
    :goto_5
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 82
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->try:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->try(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$for;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Descriptors$for;->new(Lcom/google/protobuf/Descriptors$else;)V

    .line 83
    :cond_1b
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->this:Lcom/google/protobuf/Descriptors$if;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->native()Lcom/google/protobuf/DescriptorProtos$catch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$catch;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 84
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 85
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->package()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$if;->MESSAGE:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v0, v1, :cond_1c

    goto :goto_6

    .line 86
    :cond_1c
    new-instance v0, Lcom/google/protobuf/Descriptors$new;

    const-string v1, "Extensions of MessageSets must be optional messages."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw v0

    .line 87
    :cond_1d
    new-instance v0, Lcom/google/protobuf/Descriptors$new;

    const-string v1, "MessageSets cannot have fields, only extensions."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw v0

    :cond_1e
    :goto_6
    return-void

    .line 88
    :cond_1f
    new-instance v0, Lcom/google/protobuf/Descriptors$new;

    const-string v1, "Field with message or enum type missing type_name."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$new;-><init>(Lcom/google/protobuf/Descriptors$goto;Ljava/lang/String;Lcom/google/protobuf/Descriptors$do;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic try(Lcom/google/protobuf/Descriptors$else;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$new;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/Descriptors$else;->this()V

    return-void
.end method


# virtual methods
.method public abstract()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getLabel()Lcom/google/protobuf/DescriptorProtos$case$for;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$case$for;->LABEL_REQUIRED:Lcom/google/protobuf/DescriptorProtos$case$for;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public catch()Lcom/google/protobuf/Descriptors$break;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->catch:Lcom/google/protobuf/Descriptors$break;

    return-object v0
.end method

.method public class()Lcom/google/protobuf/Descriptors$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->this:Lcom/google/protobuf/Descriptors$if;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/Descriptors$else;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Descriptors$else;->goto(Lcom/google/protobuf/Descriptors$else;)I

    move-result p1

    return p1
.end method

.method public const()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->const:Ljava/lang/Object;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FieldDescriptor.getDefaultValue() called on an embedded message field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public continue()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->goto:Lcom/google/protobuf/Descriptors$else$if;

    sget-object v1, Lcom/google/protobuf/Descriptors$else$if;->STRING:Lcom/google/protobuf/Descriptors$else$if;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->native()Lcom/google/protobuf/DescriptorProtos$catch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$catch;->getMapEntry()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->do()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->static()Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/Descriptors$FileDescriptor$do;->PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    if-ne v0, v2, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->do()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->import()Lcom/google/protobuf/DescriptorProtos$break;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$break;->getJavaStringCheckUtf8()Z

    move-result v0

    return v0
.end method

.method public default()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/Descriptors$else$if;->MESSAGE:Lcom/google/protobuf/Descriptors$else$if;

    if-eq v0, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/Descriptors$else$if;->GROUP:Lcom/google/protobuf/Descriptors$else$if;

    if-eq v0, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->catch()Lcom/google/protobuf/Descriptors$break;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->try:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->static()Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/Descriptors$FileDescriptor$do;->PROTO2:Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public do()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->try:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public extends()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->hasExtendee()Z

    move-result v0

    return v0
.end method

.method public final()Lcom/google/protobuf/Descriptors$try;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->ENUM:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->class:Lcom/google/protobuf/Descriptors$try;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/protobuf/Descriptors$else;->for:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "This field is not of enum type. (%s)"

    .line 4
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finally()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$if;->MESSAGE:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->native()Lcom/google/protobuf/DescriptorProtos$catch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$catch;->getMapEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->final()Lcom/google/protobuf/Descriptors$try;

    move-result-object v0

    return-object v0
.end method

.method public getLiteJavaType()Lcom/google/protobuf/c2$for;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->getLiteType()Lcom/google/protobuf/c2$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/c2$if;->getJavaType()Lcom/google/protobuf/c2$for;

    move-result-object v0

    return-object v0
.end method

.method public getLiteType()Lcom/google/protobuf/c2$if;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/protobuf/Descriptors$else;->final:[Lcom/google/protobuf/c2$if;

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$else;->goto:Lcom/google/protobuf/Descriptors$else$if;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getNumber()I

    move-result v0

    return v0
.end method

.method public goto(Lcom/google/protobuf/Descriptors$else;)I
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/protobuf/Descriptors$else;->this:Lcom/google/protobuf/Descriptors$if;

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$else;->this:Lcom/google/protobuf/Descriptors$if;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->getNumber()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->for:Ljava/lang/String;

    return-object v0
.end method

.method public import()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->new:Ljava/lang/String;

    return-object v0
.end method

.method public internalMergeFrom(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/Message$Builder;

    check-cast p2, Lcom/google/protobuf/Message;

    invoke-interface {p1, p2}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method public isPacked()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->private()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->do()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->static()Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/Descriptors$FileDescriptor$do;->PROTO2:Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    if-ne v0, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->public()Lcom/google/protobuf/DescriptorProtos$else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$else;->getPacked()Z

    move-result v0

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->public()Lcom/google/protobuf/DescriptorProtos$else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$else;->hasPacked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->public()Lcom/google/protobuf/DescriptorProtos$else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$else;->getPacked()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public isRepeated()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getLabel()Lcom/google/protobuf/DescriptorProtos$case$for;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$case$for;->LABEL_REPEATED:Lcom/google/protobuf/DescriptorProtos$case$for;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public native()Lcom/google/protobuf/Descriptors$if;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->break:Lcom/google/protobuf/Descriptors$if;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/protobuf/Descriptors$else;->for:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "This field is not of message type. (%s)"

    .line 4
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic new()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->volatile()Lcom/google/protobuf/DescriptorProtos$case;

    move-result-object v0

    return-object v0
.end method

.method public package()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getLabel()Lcom/google/protobuf/DescriptorProtos$case$for;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$case$for;->LABEL_OPTIONAL:Lcom/google/protobuf/DescriptorProtos$case$for;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public private()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->getLiteType()Lcom/google/protobuf/c2$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/c2$if;->isPackable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public public()Lcom/google/protobuf/DescriptorProtos$else;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->getOptions()Lcom/google/protobuf/DescriptorProtos$else;

    move-result-object v0

    return-object v0
.end method

.method public return()Lcom/google/protobuf/Descriptors$break;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->catch:Lcom/google/protobuf/Descriptors$break;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$break;->throw()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->catch:Lcom/google/protobuf/Descriptors$break;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static()Lcom/google/protobuf/Descriptors$else$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->goto:Lcom/google/protobuf/Descriptors$else$if;

    return-object v0
.end method

.method public super()Lcom/google/protobuf/Descriptors$if;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->case:Lcom/google/protobuf/Descriptors$if;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/protobuf/Descriptors$else;->for:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "This field is not an extension. (%s)"

    .line 4
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public switch()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$case;->hasDefaultValue()Z

    move-result v0

    return v0
.end method

.method public throw()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/Descriptors$else;->do:I

    return v0
.end method

.method public throws()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/Descriptors$else;->else:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->try:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->static()Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FileDescriptor$do;->PROTO2:Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->package()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->catch()Lcom/google/protobuf/Descriptors$break;

    move-result-object v0

    if-nez v0, :cond_0

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

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$else;->if()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public volatile()Lcom/google/protobuf/DescriptorProtos$case;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->if:Lcom/google/protobuf/DescriptorProtos$case;

    return-object v0
.end method

.method public while()Lcom/google/protobuf/Descriptors$else$do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$else;->goto:Lcom/google/protobuf/Descriptors$else$if;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else$if;->getJavaType()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    return-object v0
.end method
