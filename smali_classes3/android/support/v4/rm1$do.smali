.class public Landroid/support/v4/rm1$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/annotation/meta/TypeQualifierValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/rm1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/annotation/meta/TypeQualifierValidator<",
        "Landroid/support/v4/rm1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/support/v4/rm1;Ljava/lang/Object;)Ljavax/annotation/meta/for;
    .locals 0

    .line 1
    instance-of p1, p2, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Ljavax/annotation/meta/for;->NEVER:Ljavax/annotation/meta/for;

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    sget-object p1, Ljavax/annotation/meta/for;->ALWAYS:Ljavax/annotation/meta/for;

    return-object p1

    .line 5
    :catch_0
    sget-object p1, Ljavax/annotation/meta/for;->NEVER:Ljavax/annotation/meta/for;

    return-object p1
.end method

.method public bridge synthetic forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljavax/annotation/meta/for;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/rm1;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/rm1$do;->do(Landroid/support/v4/rm1;Ljava/lang/Object;)Ljavax/annotation/meta/for;

    move-result-object p1

    return-object p1
.end method
