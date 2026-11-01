.class public final enum Lcom/googlecode/protobuf/format/for$do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/protobuf/format/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/googlecode/protobuf/format/for$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COUCHDB:Lcom/googlecode/protobuf/format/for$do;

.field public static final enum HTML:Lcom/googlecode/protobuf/format/for$do;

.field public static final enum JAVA_PROPS:Lcom/googlecode/protobuf/format/for$do;

.field public static final enum JSON:Lcom/googlecode/protobuf/format/for$do;

.field public static final enum JSON_JACKSON:Lcom/googlecode/protobuf/format/for$do;

.field public static final enum SMILE:Lcom/googlecode/protobuf/format/for$do;

.field public static final enum XML:Lcom/googlecode/protobuf/format/for$do;

.field public static final enum XML_JAVAX:Lcom/googlecode/protobuf/format/for$do;

.field private static final synthetic do:[Lcom/googlecode/protobuf/format/for$do;


# instance fields
.field private formatterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/googlecode/protobuf/format/goto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/googlecode/protobuf/format/for$do;

    const-class v1, Lcom/googlecode/protobuf/format/if;

    const-string v2, "COUCHDB"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/googlecode/protobuf/format/for$do;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/googlecode/protobuf/format/for$do;->COUCHDB:Lcom/googlecode/protobuf/format/for$do;

    .line 2
    new-instance v1, Lcom/googlecode/protobuf/format/for$do;

    const-class v2, Lcom/googlecode/protobuf/format/new;

    const-string v4, "HTML"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/googlecode/protobuf/format/for$do;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lcom/googlecode/protobuf/format/for$do;->HTML:Lcom/googlecode/protobuf/format/for$do;

    .line 3
    new-instance v2, Lcom/googlecode/protobuf/format/for$do;

    const-class v4, Lcom/googlecode/protobuf/format/try;

    const-string v6, "JAVA_PROPS"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/googlecode/protobuf/format/for$do;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Lcom/googlecode/protobuf/format/for$do;->JAVA_PROPS:Lcom/googlecode/protobuf/format/for$do;

    .line 4
    new-instance v4, Lcom/googlecode/protobuf/format/for$do;

    const-class v6, Lcom/googlecode/protobuf/format/case;

    const-string v8, "JSON"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/googlecode/protobuf/format/for$do;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v4, Lcom/googlecode/protobuf/format/for$do;->JSON:Lcom/googlecode/protobuf/format/for$do;

    .line 5
    new-instance v6, Lcom/googlecode/protobuf/format/for$do;

    const-class v8, Lcom/googlecode/protobuf/format/break;

    const-string v10, "XML"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/googlecode/protobuf/format/for$do;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v6, Lcom/googlecode/protobuf/format/for$do;->XML:Lcom/googlecode/protobuf/format/for$do;

    .line 6
    new-instance v8, Lcom/googlecode/protobuf/format/for$do;

    const-class v10, Lcom/googlecode/protobuf/format/this;

    const-string v12, "SMILE"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/googlecode/protobuf/format/for$do;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v8, Lcom/googlecode/protobuf/format/for$do;->SMILE:Lcom/googlecode/protobuf/format/for$do;

    .line 7
    new-instance v10, Lcom/googlecode/protobuf/format/for$do;

    const-class v12, Lcom/googlecode/protobuf/format/else;

    const-string v14, "JSON_JACKSON"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/googlecode/protobuf/format/for$do;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v10, Lcom/googlecode/protobuf/format/for$do;->JSON_JACKSON:Lcom/googlecode/protobuf/format/for$do;

    .line 8
    new-instance v12, Lcom/googlecode/protobuf/format/for$do;

    const-class v14, Lcom/googlecode/protobuf/format/catch;

    const-string v15, "XML_JAVAX"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/googlecode/protobuf/format/for$do;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v12, Lcom/googlecode/protobuf/format/for$do;->XML_JAVAX:Lcom/googlecode/protobuf/format/for$do;

    const/16 v14, 0x8

    new-array v14, v14, [Lcom/googlecode/protobuf/format/for$do;

    aput-object v0, v14, v3

    aput-object v1, v14, v5

    aput-object v2, v14, v7

    aput-object v4, v14, v9

    aput-object v6, v14, v11

    const/4 v0, 0x5

    aput-object v8, v14, v0

    const/4 v0, 0x6

    aput-object v10, v14, v0

    aput-object v12, v14, v13

    .line 9
    sput-object v14, Lcom/googlecode/protobuf/format/for$do;->do:[Lcom/googlecode/protobuf/format/for$do;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/googlecode/protobuf/format/goto;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/googlecode/protobuf/format/for$do;->formatterClass:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/googlecode/protobuf/format/for$do;
    .locals 1

    .line 1
    const-class v0, Lcom/googlecode/protobuf/format/for$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/googlecode/protobuf/format/for$do;

    return-object p0
.end method

.method public static values()[Lcom/googlecode/protobuf/format/for$do;
    .locals 1

    .line 1
    sget-object v0, Lcom/googlecode/protobuf/format/for$do;->do:[Lcom/googlecode/protobuf/format/for$do;

    invoke-virtual {v0}, [Lcom/googlecode/protobuf/format/for$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/googlecode/protobuf/format/for$do;

    return-object v0
.end method


# virtual methods
.method public getFormatterClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/googlecode/protobuf/format/goto;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/protobuf/format/for$do;->formatterClass:Ljava/lang/Class;

    return-object v0
.end method
