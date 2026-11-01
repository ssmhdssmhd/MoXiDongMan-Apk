.class public final enum Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

.field public static final enum SLICE_BETWEEN:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

.field public static final enum SLICE_FROM:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

.field public static final enum SLICE_TO:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

    const-string v1, "SLICE_FROM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;->SLICE_FROM:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

    .line 2
    new-instance v1, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

    const-string v3, "SLICE_TO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;->SLICE_TO:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

    .line 3
    new-instance v3, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

    const-string v5, "SLICE_BETWEEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;->SLICE_BETWEEN:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;->$VALUES:[Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;
    .locals 1

    .line 1
    const-class v0, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

    return-object p0
.end method

.method public static values()[Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;->$VALUES:[Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

    invoke-virtual {v0}, [Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

    return-object v0
.end method
