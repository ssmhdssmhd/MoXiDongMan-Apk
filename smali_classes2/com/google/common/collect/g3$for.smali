.class abstract enum Lcom/google/common/collect/g3$for;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/g3$for;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANY_PRESENT:Lcom/google/common/collect/g3$for;

.field public static final enum FIRST_AFTER:Lcom/google/common/collect/g3$for;

.field public static final enum FIRST_PRESENT:Lcom/google/common/collect/g3$for;

.field public static final enum LAST_BEFORE:Lcom/google/common/collect/g3$for;

.field public static final enum LAST_PRESENT:Lcom/google/common/collect/g3$for;

.field private static final synthetic do:[Lcom/google/common/collect/g3$for;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/google/common/collect/g3$for$do;

    const-string v1, "ANY_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/g3$for$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/g3$for;->ANY_PRESENT:Lcom/google/common/collect/g3$for;

    .line 2
    new-instance v1, Lcom/google/common/collect/g3$for$if;

    const-string v3, "LAST_PRESENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/collect/g3$for$if;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/collect/g3$for;->LAST_PRESENT:Lcom/google/common/collect/g3$for;

    .line 3
    new-instance v3, Lcom/google/common/collect/g3$for$for;

    const-string v5, "FIRST_PRESENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/common/collect/g3$for$for;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/common/collect/g3$for;->FIRST_PRESENT:Lcom/google/common/collect/g3$for;

    .line 4
    new-instance v5, Lcom/google/common/collect/g3$for$new;

    const-string v7, "FIRST_AFTER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/common/collect/g3$for$new;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/common/collect/g3$for;->FIRST_AFTER:Lcom/google/common/collect/g3$for;

    .line 5
    new-instance v7, Lcom/google/common/collect/g3$for$try;

    const-string v9, "LAST_BEFORE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/common/collect/g3$for$try;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/common/collect/g3$for;->LAST_BEFORE:Lcom/google/common/collect/g3$for;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/common/collect/g3$for;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/google/common/collect/g3$for;->do:[Lcom/google/common/collect/g3$for;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/g3$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/g3$for;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/g3$for;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/collect/g3$for;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/g3$for;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/g3$for;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/g3$for;->do:[Lcom/google/common/collect/g3$for;

    invoke-virtual {v0}, [Lcom/google/common/collect/g3$for;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/g3$for;

    return-object v0
.end method


# virtual methods
.method public abstract resultIndex(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;",
            "Ljava/util/List<",
            "+TE;>;I)I"
        }
    .end annotation
.end method
