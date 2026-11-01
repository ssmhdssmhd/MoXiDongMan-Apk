.class public Landroid/support/v4/ov0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/ov0$do;
    }
.end annotation


# static fields
.field public static final goto:Ljava/lang/String; = "ISO-8859-1"


# instance fields
.field public case:Lorg/bouncycastle/i18n/filter/Filter;

.field public final do:Ljava/lang/String;

.field public else:Ljava/lang/ClassLoader;

.field public for:Ljava/lang/String;

.field public final if:Ljava/lang/String;

.field public new:Landroid/support/v4/ov0$do;

.field public try:Landroid/support/v4/ov0$do;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Landroid/support/v4/ov0;->for:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/ov0;->try:Landroid/support/v4/ov0$do;

    iput-object v0, p0, Landroid/support/v4/ov0;->case:Lorg/bouncycastle/i18n/filter/Filter;

    iput-object v0, p0, Landroid/support/v4/ov0;->else:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p2, p0, Landroid/support/v4/ov0;->do:Ljava/lang/String;

    iput-object p1, p0, Landroid/support/v4/ov0;->if:Ljava/lang/String;

    new-instance p1, Landroid/support/v4/ov0$do;

    invoke-direct {p1, p0}, Landroid/support/v4/ov0$do;-><init>(Landroid/support/v4/ov0;)V

    iput-object p1, p0, Landroid/support/v4/ov0;->new:Landroid/support/v4/ov0$do;

    return-void

    :cond_0
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Landroid/support/v4/ov0;->for:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/ov0;->try:Landroid/support/v4/ov0$do;

    iput-object v0, p0, Landroid/support/v4/ov0;->case:Lorg/bouncycastle/i18n/filter/Filter;

    iput-object v0, p0, Landroid/support/v4/ov0;->else:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iput-object p2, p0, Landroid/support/v4/ov0;->do:Ljava/lang/String;

    iput-object p1, p0, Landroid/support/v4/ov0;->if:Ljava/lang/String;

    new-instance p1, Landroid/support/v4/ov0$do;

    invoke-direct {p1, p0}, Landroid/support/v4/ov0$do;-><init>(Landroid/support/v4/ov0;)V

    iput-object p1, p0, Landroid/support/v4/ov0;->new:Landroid/support/v4/ov0$do;

    invoke-static {p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p3, p0, Landroid/support/v4/ov0;->for:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The encoding \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" is not supported."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Landroid/support/v4/ov0;->for:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/ov0;->try:Landroid/support/v4/ov0$do;

    iput-object v0, p0, Landroid/support/v4/ov0;->case:Lorg/bouncycastle/i18n/filter/Filter;

    iput-object v0, p0, Landroid/support/v4/ov0;->else:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    iput-object p2, p0, Landroid/support/v4/ov0;->do:Ljava/lang/String;

    iput-object p1, p0, Landroid/support/v4/ov0;->if:Ljava/lang/String;

    new-instance p1, Landroid/support/v4/ov0$do;

    invoke-direct {p1, p0, p4}, Landroid/support/v4/ov0$do;-><init>(Landroid/support/v4/ov0;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/support/v4/ov0;->new:Landroid/support/v4/ov0$do;

    invoke-static {p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p3, p0, Landroid/support/v4/ov0;->for:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The encoding \""

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" is not supported."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Landroid/support/v4/ov0;->for:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/ov0;->try:Landroid/support/v4/ov0$do;

    iput-object v0, p0, Landroid/support/v4/ov0;->case:Lorg/bouncycastle/i18n/filter/Filter;

    iput-object v0, p0, Landroid/support/v4/ov0;->else:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iput-object p2, p0, Landroid/support/v4/ov0;->do:Ljava/lang/String;

    iput-object p1, p0, Landroid/support/v4/ov0;->if:Ljava/lang/String;

    new-instance p1, Landroid/support/v4/ov0$do;

    invoke-direct {p1, p0, p3}, Landroid/support/v4/ov0$do;-><init>(Landroid/support/v4/ov0;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/support/v4/ov0;->new:Landroid/support/v4/ov0$do;

    return-void

    :cond_0
    throw v0
.end method


# virtual methods
.method public break(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/ov0;->else:Ljava/lang/ClassLoader;

    return-void
.end method

.method public case()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ov0;->try:Landroid/support/v4/ov0$do;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/ov0$do;->if()[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public catch(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/ov0;->class([Ljava/lang/Object;)V

    return-void
.end method

.method public class([Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/v4/ov0$do;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/ov0$do;-><init>(Landroid/support/v4/ov0;[Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/ov0;->try:Landroid/support/v4/ov0$do;

    iget-object p1, p0, Landroid/support/v4/ov0;->case:Lorg/bouncycastle/i18n/filter/Filter;

    invoke-virtual {v0, p1}, Landroid/support/v4/ov0$do;->case(Lorg/bouncycastle/i18n/filter/Filter;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/ov0;->try:Landroid/support/v4/ov0$do;

    :goto_0
    return-void
.end method

.method public const(Lorg/bouncycastle/i18n/filter/Filter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ov0;->new:Landroid/support/v4/ov0$do;

    invoke-virtual {v0, p1}, Landroid/support/v4/ov0$do;->case(Lorg/bouncycastle/i18n/filter/Filter;)V

    iget-object v0, p0, Landroid/support/v4/ov0;->try:Landroid/support/v4/ov0$do;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/ov0$do;->case(Lorg/bouncycastle/i18n/filter/Filter;)V

    :cond_0
    iput-object p1, p0, Landroid/support/v4/ov0;->case:Lorg/bouncycastle/i18n/filter/Filter;

    return-void
.end method

.method public do(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/ov0;->try:Landroid/support/v4/ov0$do;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/support/v4/ov0;->try:Landroid/support/v4/ov0$do;

    invoke-virtual {p1, p2}, Landroid/support/v4/ov0$do;->new(Ljava/util/Locale;)[Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_0

    aget-object v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public else()Lorg/bouncycastle/i18n/filter/Filter;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ov0;->case:Lorg/bouncycastle/i18n/filter/Filter;

    return-object v0
.end method

.method public for()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ov0;->new:Landroid/support/v4/ov0$do;

    invoke-virtual {v0}, Landroid/support/v4/ov0$do;->if()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public goto()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ov0;->do:Ljava/lang/String;

    return-object v0
.end method

.method public if(Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/text/MessageFormat;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/text/MessageFormat;->getFormats()[Ljava/text/Format;

    move-result-object p1

    const/4 p3, 0x0

    :goto_0
    array-length v1, p1

    if-ge p3, v1, :cond_1

    aget-object v1, p1, p3

    instance-of v1, v1, Ljava/text/DateFormat;

    if-eqz v1, :cond_0

    aget-object v1, p1, p3

    check-cast v1, Ljava/text/DateFormat;

    invoke-virtual {v1, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p3, v1}, Ljava/text/MessageFormat;->setFormat(ILjava/text/Format;)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public new()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ov0;->else:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public this()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ov0;->if:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Resource: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/support/v4/ov0;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" Id: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/support/v4/ov0;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " Arguments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/support/v4/ov0;->new:Landroid/support/v4/ov0$do;

    invoke-virtual {v1}, Landroid/support/v4/ov0$do;->if()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " normal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/support/v4/ov0;->try:Landroid/support/v4/ov0$do;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/ov0$do;->if()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/support/v4/ov0;->try:Landroid/support/v4/ov0$do;

    invoke-virtual {v1}, Landroid/support/v4/ov0$do;->if()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " extra"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, " Encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/support/v4/ov0;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ClassLoader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/support/v4/ov0;->else:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/b01;
        }
    .end annotation

    const-string v0, "ISO-8859-1"

    iget-object v1, p0, Landroid/support/v4/ov0;->do:Ljava/lang/String;

    const-string v2, "."

    if-eqz p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v6, v1

    :try_start_0
    iget-object p1, p0, Landroid/support/v4/ov0;->else:Ljava/lang/ClassLoader;

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/support/v4/ov0;->if:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/ov0;->if:Ljava/lang/String;

    invoke-static {v1, p2, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Landroid/support/v4/ov0;->for:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/ov0;->for:Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object p1, v1

    :cond_2
    iget-object v0, p0, Landroid/support/v4/ov0;->new:Landroid/support/v4/ov0$do;

    invoke-virtual {v0}, Landroid/support/v4/ov0$do;->try()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/ov0;->new:Landroid/support/v4/ov0$do;

    invoke-virtual {v0, p2}, Landroid/support/v4/ov0$do;->new(Ljava/util/Locale;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/support/v4/ov0;->if(Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/ov0;->do(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    nop

    new-instance p1, Landroid/support/v4/b01;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find entry "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in resource file "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/ov0;->if:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/ov0;->if:Ljava/lang/String;

    iget-object p3, p0, Landroid/support/v4/ov0;->else:Ljava/lang/ClassLoader;

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/ov0;->new()Ljava/lang/ClassLoader;

    move-result-object p3

    :goto_1
    move-object v8, p3

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Landroid/support/v4/b01;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V

    throw p1
.end method
