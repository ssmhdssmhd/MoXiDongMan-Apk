.class public final enum Lorg/greenrobot/greendao/generator/PropertyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/greenrobot/greendao/generator/PropertyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/greenrobot/greendao/generator/PropertyType;

.field public static final enum Boolean:Lorg/greenrobot/greendao/generator/PropertyType;

.field public static final enum Byte:Lorg/greenrobot/greendao/generator/PropertyType;

.field public static final enum ByteArray:Lorg/greenrobot/greendao/generator/PropertyType;

.field public static final enum Date:Lorg/greenrobot/greendao/generator/PropertyType;

.field public static final enum Double:Lorg/greenrobot/greendao/generator/PropertyType;

.field public static final enum Float:Lorg/greenrobot/greendao/generator/PropertyType;

.field public static final enum Int:Lorg/greenrobot/greendao/generator/PropertyType;

.field public static final enum Long:Lorg/greenrobot/greendao/generator/PropertyType;

.field public static final enum Short:Lorg/greenrobot/greendao/generator/PropertyType;

.field public static final enum String:Lorg/greenrobot/greendao/generator/PropertyType;


# instance fields
.field private final scalar:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v1, "Byte"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/greendao/generator/PropertyType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/greenrobot/greendao/generator/PropertyType;->Byte:Lorg/greenrobot/greendao/generator/PropertyType;

    new-instance v1, Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v4, "Short"

    invoke-direct {v1, v4, v3, v3}, Lorg/greenrobot/greendao/generator/PropertyType;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lorg/greenrobot/greendao/generator/PropertyType;->Short:Lorg/greenrobot/greendao/generator/PropertyType;

    new-instance v4, Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v5, "Int"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3}, Lorg/greenrobot/greendao/generator/PropertyType;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lorg/greenrobot/greendao/generator/PropertyType;->Int:Lorg/greenrobot/greendao/generator/PropertyType;

    new-instance v5, Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v7, "Long"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v3}, Lorg/greenrobot/greendao/generator/PropertyType;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lorg/greenrobot/greendao/generator/PropertyType;->Long:Lorg/greenrobot/greendao/generator/PropertyType;

    new-instance v7, Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v9, "Boolean"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v3}, Lorg/greenrobot/greendao/generator/PropertyType;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lorg/greenrobot/greendao/generator/PropertyType;->Boolean:Lorg/greenrobot/greendao/generator/PropertyType;

    new-instance v9, Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v11, "Float"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v3}, Lorg/greenrobot/greendao/generator/PropertyType;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lorg/greenrobot/greendao/generator/PropertyType;->Float:Lorg/greenrobot/greendao/generator/PropertyType;

    new-instance v11, Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v13, "Double"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v3}, Lorg/greenrobot/greendao/generator/PropertyType;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lorg/greenrobot/greendao/generator/PropertyType;->Double:Lorg/greenrobot/greendao/generator/PropertyType;

    .line 2
    new-instance v13, Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v15, "String"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v2}, Lorg/greenrobot/greendao/generator/PropertyType;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Lorg/greenrobot/greendao/generator/PropertyType;->String:Lorg/greenrobot/greendao/generator/PropertyType;

    new-instance v15, Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v14, "ByteArray"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v2}, Lorg/greenrobot/greendao/generator/PropertyType;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Lorg/greenrobot/greendao/generator/PropertyType;->ByteArray:Lorg/greenrobot/greendao/generator/PropertyType;

    new-instance v14, Lorg/greenrobot/greendao/generator/PropertyType;

    const-string v12, "Date"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v2}, Lorg/greenrobot/greendao/generator/PropertyType;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Lorg/greenrobot/greendao/generator/PropertyType;->Date:Lorg/greenrobot/greendao/generator/PropertyType;

    const/16 v12, 0xa

    new-array v12, v12, [Lorg/greenrobot/greendao/generator/PropertyType;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 3
    sput-object v12, Lorg/greenrobot/greendao/generator/PropertyType;->$VALUES:[Lorg/greenrobot/greendao/generator/PropertyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lorg/greenrobot/greendao/generator/PropertyType;->scalar:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/PropertyType;
    .locals 1

    .line 1
    const-class v0, Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/greendao/generator/PropertyType;

    return-object p0
.end method

.method public static values()[Lorg/greenrobot/greendao/generator/PropertyType;
    .locals 1

    .line 1
    sget-object v0, Lorg/greenrobot/greendao/generator/PropertyType;->$VALUES:[Lorg/greenrobot/greendao/generator/PropertyType;

    invoke-virtual {v0}, [Lorg/greenrobot/greendao/generator/PropertyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/greenrobot/greendao/generator/PropertyType;

    return-object v0
.end method


# virtual methods
.method public isScalar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/generator/PropertyType;->scalar:Z

    return v0
.end method
