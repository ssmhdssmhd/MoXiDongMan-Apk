.class abstract Lcom/google/protobuf/final;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final do:Lcom/google/protobuf/final;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/final$do;

    invoke-direct {v0}, Lcom/google/protobuf/final$do;-><init>()V

    sput-object v0, Lcom/google/protobuf/final;->do:Lcom/google/protobuf/final;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static for()Lcom/google/protobuf/final;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/final;->do:Lcom/google/protobuf/final;

    return-object v0
.end method


# virtual methods
.method public abstract do(I)Lcom/google/protobuf/for;
.end method

.method public abstract if(I)Lcom/google/protobuf/for;
.end method
