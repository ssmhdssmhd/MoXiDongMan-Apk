.class public Landroid/support/v4/nx0$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/annotation/meta/TypeQualifierValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/nx0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/annotation/meta/TypeQualifierValidator<",
        "Landroid/support/v4/nx0;",
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
.method public do(Landroid/support/v4/nx0;Ljava/lang/Object;)Ljavax/annotation/meta/for;
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/support/v4/nx0;->value()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/support/v4/nx0;->flags()I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 2
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Ljavax/annotation/meta/for;->ALWAYS:Ljavax/annotation/meta/for;

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Ljavax/annotation/meta/for;->NEVER:Ljavax/annotation/meta/for;

    return-object p1
.end method

.method public bridge synthetic forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljavax/annotation/meta/for;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/nx0;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/nx0$do;->do(Landroid/support/v4/nx0;Ljava/lang/Object;)Ljavax/annotation/meta/for;

    move-result-object p1

    return-object p1
.end method
