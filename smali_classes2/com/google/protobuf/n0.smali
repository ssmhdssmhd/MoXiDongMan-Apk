.class final Lcom/google/protobuf/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:I

.field private final for:Ljava/lang/reflect/Field;

.field private final if:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(ILjava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/protobuf/n0;->do:I

    .line 3
    iput-object p2, p0, Lcom/google/protobuf/n0;->if:Ljava/lang/reflect/Field;

    .line 4
    iput-object p3, p0, Lcom/google/protobuf/n0;->for:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/n0;->if:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public for()Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/n0;->for:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/n0;->do:I

    return v0
.end method
