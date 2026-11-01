.class public Lfreemarker/core/v2;
.super Lfreemarker/core/r4;
.source "SourceFile"


# static fields
.field public static final STRING_COERCABLE_TYPES_AND_TOM:[Ljava/lang/Class;

.field public static final STRING_COERCABLE_TYPES_OR_TOM_DESC:Ljava/lang/String; = "string or something automatically convertible to string (number, date or boolean), or \"template output\" "

.field private static final break:Ljava/lang/String; = "Expecting string or something automatically convertible to string (number, date or boolean), or \"template output\"  value here"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lfreemarker/core/u2;->STRING_COERCABLE_TYPES:[Ljava/lang/Class;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lfreemarker/core/v2;->STRING_COERCABLE_TYPES_AND_TOM:[Ljava/lang/Class;

    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lfreemarker/core/u2;->STRING_COERCABLE_TYPES:[Ljava/lang/Class;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3
    sget-object v2, Lfreemarker/core/v2;->STRING_COERCABLE_TYPES_AND_TOM:[Ljava/lang/Class;

    aget-object v1, v1, v0

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lfreemarker/core/v2;->STRING_COERCABLE_TYPES_AND_TOM:[Ljava/lang/Class;

    const-class v2, Lfreemarker/core/TemplateMarkupOutputModel;

    aput-object v2, v1, v0

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/d0;)V
    .locals 1

    const-string v0, "Expecting string or something automatically convertible to string (number, date or boolean), or \"template output\"  value here"

    .line 1
    invoke-direct {p0, p1, v0}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/d0;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/d0;Lfreemarker/core/z4;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/d0;Lfreemarker/core/z4;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/b1;
        }
    .end annotation

    .line 4
    sget-object v4, Lfreemarker/core/v2;->STRING_COERCABLE_TYPES_AND_TOM:[Ljava/lang/Class;

    const-string v3, "string or something automatically convertible to string (number, date or boolean), or \"template output\" "

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/d0;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;Lfreemarker/core/d0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/b1;
        }
    .end annotation

    .line 5
    sget-object v4, Lfreemarker/core/v2;->STRING_COERCABLE_TYPES_AND_TOM:[Ljava/lang/Class;

    const-string v3, "string or something automatically convertible to string (number, date or boolean), or \"template output\" "

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;Lfreemarker/core/d0;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;[Ljava/lang/String;Lfreemarker/core/d0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/b1;
        }
    .end annotation

    .line 6
    sget-object v4, Lfreemarker/core/v2;->STRING_COERCABLE_TYPES_AND_TOM:[Ljava/lang/Class;

    const-string v3, "string or something automatically convertible to string (number, date or boolean), or \"template output\" "

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lfreemarker/core/d0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/core/d0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p1}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/d0;Ljava/lang/String;)V

    return-void
.end method
