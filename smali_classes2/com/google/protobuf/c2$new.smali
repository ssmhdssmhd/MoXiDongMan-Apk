.class abstract enum Lcom/google/protobuf/c2$new;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/c2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/c2$new;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LAZY:Lcom/google/protobuf/c2$new;

.field public static final enum LOOSE:Lcom/google/protobuf/c2$new;

.field public static final enum STRICT:Lcom/google/protobuf/c2$new;

.field private static final synthetic do:[Lcom/google/protobuf/c2$new;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/protobuf/c2$new$do;

    const-string v1, "LOOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/c2$new$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/c2$new;->LOOSE:Lcom/google/protobuf/c2$new;

    .line 2
    new-instance v1, Lcom/google/protobuf/c2$new$if;

    const-string v3, "STRICT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/protobuf/c2$new$if;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/protobuf/c2$new;->STRICT:Lcom/google/protobuf/c2$new;

    .line 3
    new-instance v3, Lcom/google/protobuf/c2$new$for;

    const-string v5, "LAZY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/protobuf/c2$new$for;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/protobuf/c2$new;->LAZY:Lcom/google/protobuf/c2$new;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/protobuf/c2$new;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/google/protobuf/c2$new;->do:[Lcom/google/protobuf/c2$new;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/protobuf/c2$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/c2$new;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/c2$new;
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/c2$new;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/c2$new;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/c2$new;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/c2$new;->do:[Lcom/google/protobuf/c2$new;

    invoke-virtual {v0}, [Lcom/google/protobuf/c2$new;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/c2$new;

    return-object v0
.end method


# virtual methods
.method public abstract readString(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
