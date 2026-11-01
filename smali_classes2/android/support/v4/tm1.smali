.class public Landroid/support/v4/tm1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final case:Ljava/lang/String; = "^(^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$)|(^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])((\\d{4})|\\d{3}[Xx])$)$"

.field public static final do:Ljava/lang/String; = "^((?:(?:25[0-5]|2[0-4]\\d|((1\\d{2})|([1-9]?\\d)))\\.){3}(?:25[0-5]|2[0-4]\\d|((1\\d{2})|([1-9]?\\d))))$"

.field public static final else:Ljava/lang/String; = "^\\d{6}$"

.field public static final for:Ljava/lang/String; = "^(www\\.)?\\w+@\\w+(\\.\\w+)+$"

.field public static final goto:Ljava/lang/String; = "^(([hH][tT]{2}[pP][sS]?)|([fF][tT][pP]))\\:\\/\\/[wW]{3}\\.[\\w-]+\\.\\w{2,4}(\\/.*)?$"

.field public static final if:Ljava/lang/String; = "^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$"

.field public static final new:Ljava/lang/String; = "^[\u4e00-\u9f5a]+$"

.field public static final try:Ljava/lang/String; = "^\\d+$"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^\\d+$"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static do(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[\u4e00-\u9f5a]+$"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static else(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^(([hH][tT]{2}[pP][sS]?)|([fF][tT][pP]))\\:\\/\\/[wW]{3}\\.[\\w-]+\\.\\w{2,4}(\\/.*)?$"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static for(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^(^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$)|(^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])((\\d{4})|\\d{3}[Xx])$)$"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static goto(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^\\d{6}$"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static if(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^(www\\.)?\\w+@\\w+(\\.\\w+)+$"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static new(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^((?:(?:25[0-5]|2[0-4]\\d|((1\\d{2})|([1-9]?\\d)))\\.){3}(?:25[0-5]|2[0-4]\\d|((1\\d{2})|([1-9]?\\d))))$"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static try(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
