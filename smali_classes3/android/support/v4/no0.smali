.class public Landroid/support/v4/no0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final import:I = 0xa

.field public static final native:I = 0x14

.field public static final public:I = 0x1e

.field public static final return:I = 0x28

.field public static final static:I = 0x32

.field public static final switch:I = 0x3c

.field public static final throws:I = 0x46

.field public static final while:I


# instance fields
.field private break:Ljava/math/BigInteger;

.field private final case:Ljava/math/BigInteger;

.field private catch:Ljava/math/BigInteger;

.field private class:Ljava/math/BigInteger;

.field private const:Ljava/math/BigInteger;

.field private final do:Ljava/lang/String;

.field private final else:Ljava/math/BigInteger;

.field private final:Ljava/math/BigInteger;

.field private final for:Lorg/bouncycastle/crypto/Digest;

.field private goto:Ljava/lang/String;

.field private if:[C

.field private final new:Ljava/security/SecureRandom;

.field private super:Ljava/math/BigInteger;

.field private this:Ljava/math/BigInteger;

.field private throw:I

.field private final try:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 1

    sget-object v0, Landroid/support/v4/po0;->for:Landroid/support/v4/aab;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/no0;-><init>(Ljava/lang/String;[CLandroid/support/v4/aab;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLandroid/support/v4/aab;)V
    .locals 6

    new-instance v4, Landroid/support/v4/yp1;

    invoke-direct {v4}, Landroid/support/v4/yp1;-><init>()V

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/no0;-><init>(Ljava/lang/String;[CLandroid/support/v4/aab;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLandroid/support/v4/aab;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "participantId"

    invoke-static {p1, v0}, Landroid/support/v4/to0;->switch(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Landroid/support/v4/to0;->switch(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p3, v0}, Landroid/support/v4/to0;->switch(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "digest"

    invoke-static {p4, v0}, Landroid/support/v4/to0;->switch(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p5, v0}, Landroid/support/v4/to0;->switch(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    array-length p1, p2

    invoke-static {p2, p1}, Landroid/support/v4/q3;->interface([CI)[C

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/no0;->if:[C

    invoke-virtual {p3}, Landroid/support/v4/aab;->if()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/no0;->try:Ljava/math/BigInteger;

    invoke-virtual {p3}, Landroid/support/v4/aab;->for()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/no0;->case:Ljava/math/BigInteger;

    invoke-virtual {p3}, Landroid/support/v4/aab;->do()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/no0;->else:Ljava/math/BigInteger;

    iput-object p4, p0, Landroid/support/v4/no0;->for:Lorg/bouncycastle/crypto/Digest;

    iput-object p5, p0, Landroid/support/v4/no0;->new:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v4/no0;->throw:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Password must not be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public case(Landroid/support/v4/qo0;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/xs;
        }
    .end annotation

    iget v0, p0, Landroid/support/v4/no0;->throw:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/qo0;->try()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/no0;->goto:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v4/qo0;->do()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/no0;->const:Ljava/math/BigInteger;

    invoke-virtual {p1}, Landroid/support/v4/qo0;->if()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/no0;->final:Ljava/math/BigInteger;

    invoke-virtual {p1}, Landroid/support/v4/qo0;->for()[Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1}, Landroid/support/v4/qo0;->new()[Ljava/math/BigInteger;

    move-result-object v11

    iget-object v0, p0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v4/qo0;->try()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/to0;->throws(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/no0;->final:Ljava/math/BigInteger;

    invoke-static {v0}, Landroid/support/v4/to0;->return(Ljava/math/BigInteger;)V

    iget-object v2, p0, Landroid/support/v4/no0;->try:Ljava/math/BigInteger;

    iget-object v3, p0, Landroid/support/v4/no0;->case:Ljava/math/BigInteger;

    iget-object v4, p0, Landroid/support/v4/no0;->else:Ljava/math/BigInteger;

    iget-object v5, p0, Landroid/support/v4/no0;->const:Ljava/math/BigInteger;

    invoke-virtual {p1}, Landroid/support/v4/qo0;->try()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v4/no0;->for:Lorg/bouncycastle/crypto/Digest;

    invoke-static/range {v2 .. v8}, Landroid/support/v4/to0;->extends(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)V

    iget-object v7, p0, Landroid/support/v4/no0;->try:Ljava/math/BigInteger;

    iget-object v8, p0, Landroid/support/v4/no0;->case:Ljava/math/BigInteger;

    iget-object v9, p0, Landroid/support/v4/no0;->else:Ljava/math/BigInteger;

    iget-object v10, p0, Landroid/support/v4/no0;->final:Ljava/math/BigInteger;

    invoke-virtual {p1}, Landroid/support/v4/qo0;->try()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Landroid/support/v4/no0;->for:Lorg/bouncycastle/crypto/Digest;

    invoke-static/range {v7 .. v13}, Landroid/support/v4/to0;->extends(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)V

    iput v1, p0, Landroid/support/v4/no0;->throw:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Validation already attempted for round1 payload for"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public do()Ljava/math/BigInteger;
    .locals 8

    iget v0, p0, Landroid/support/v4/no0;->throw:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    const/16 v2, 0x28

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/no0;->if:[C

    invoke-static {v0}, Landroid/support/v4/to0;->goto([C)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v0, p0, Landroid/support/v4/no0;->if:[C

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/support/v4/q3;->f([CC)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/no0;->if:[C

    iget-object v2, p0, Landroid/support/v4/no0;->try:Ljava/math/BigInteger;

    iget-object v3, p0, Landroid/support/v4/no0;->case:Ljava/math/BigInteger;

    iget-object v4, p0, Landroid/support/v4/no0;->final:Ljava/math/BigInteger;

    iget-object v5, p0, Landroid/support/v4/no0;->break:Ljava/math/BigInteger;

    iget-object v7, p0, Landroid/support/v4/no0;->super:Ljava/math/BigInteger;

    invoke-static/range {v2 .. v7}, Landroid/support/v4/to0;->try(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v0, p0, Landroid/support/v4/no0;->this:Ljava/math/BigInteger;

    iput-object v0, p0, Landroid/support/v4/no0;->break:Ljava/math/BigInteger;

    iput-object v0, p0, Landroid/support/v4/no0;->super:Ljava/math/BigInteger;

    iput v1, p0, Landroid/support/v4/no0;->throw:I

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Round2 payload must be validated prior to creating key for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key already calculated for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public else(Landroid/support/v4/ro0;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/xs;
        }
    .end annotation

    iget v0, p0, Landroid/support/v4/no0;->throw:I

    const/16 v1, 0x28

    if-ge v0, v1, :cond_1

    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/no0;->try:Ljava/math/BigInteger;

    iget-object v2, p0, Landroid/support/v4/no0;->const:Ljava/math/BigInteger;

    iget-object v3, p0, Landroid/support/v4/no0;->catch:Ljava/math/BigInteger;

    iget-object v4, p0, Landroid/support/v4/no0;->class:Ljava/math/BigInteger;

    invoke-static {v0, v2, v3, v4}, Landroid/support/v4/to0;->if(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Landroid/support/v4/ro0;->do()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/no0;->super:Ljava/math/BigInteger;

    invoke-virtual {p1}, Landroid/support/v4/ro0;->if()[Ljava/math/BigInteger;

    move-result-object v9

    iget-object v0, p0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v4/ro0;->for()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/to0;->throws(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/no0;->goto:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v4/ro0;->for()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/to0;->default(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/support/v4/to0;->public(Ljava/math/BigInteger;)V

    iget-object v5, p0, Landroid/support/v4/no0;->try:Ljava/math/BigInteger;

    iget-object v6, p0, Landroid/support/v4/no0;->case:Ljava/math/BigInteger;

    iget-object v8, p0, Landroid/support/v4/no0;->super:Ljava/math/BigInteger;

    invoke-virtual {p1}, Landroid/support/v4/ro0;->for()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Landroid/support/v4/no0;->for:Lorg/bouncycastle/crypto/Digest;

    invoke-static/range {v5 .. v11}, Landroid/support/v4/to0;->extends(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)V

    iput v1, p0, Landroid/support/v4/no0;->throw:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Round1 payload must be validated prior to validating Round2 payload for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Validation already attempted for round2 payload for"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public for()Landroid/support/v4/ro0;
    .locals 13

    iget v0, p0, Landroid/support/v4/no0;->throw:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/no0;->try:Ljava/math/BigInteger;

    iget-object v2, p0, Landroid/support/v4/no0;->catch:Ljava/math/BigInteger;

    iget-object v3, p0, Landroid/support/v4/no0;->const:Ljava/math/BigInteger;

    iget-object v4, p0, Landroid/support/v4/no0;->final:Ljava/math/BigInteger;

    invoke-static {v0, v2, v3, v4}, Landroid/support/v4/to0;->if(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    iget-object v0, p0, Landroid/support/v4/no0;->if:[C

    invoke-static {v0}, Landroid/support/v4/to0;->goto([C)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/no0;->case:Ljava/math/BigInteger;

    iget-object v3, p0, Landroid/support/v4/no0;->break:Ljava/math/BigInteger;

    invoke-static {v2, v3, v0}, Landroid/support/v4/to0;->this(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    iget-object v0, p0, Landroid/support/v4/no0;->try:Ljava/math/BigInteger;

    iget-object v2, p0, Landroid/support/v4/no0;->case:Ljava/math/BigInteger;

    invoke-static {v0, v2, v7, v9}, Landroid/support/v4/to0;->do(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v5, p0, Landroid/support/v4/no0;->try:Ljava/math/BigInteger;

    iget-object v6, p0, Landroid/support/v4/no0;->case:Ljava/math/BigInteger;

    iget-object v10, p0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    iget-object v11, p0, Landroid/support/v4/no0;->for:Lorg/bouncycastle/crypto/Digest;

    iget-object v12, p0, Landroid/support/v4/no0;->new:Ljava/security/SecureRandom;

    move-object v8, v0

    invoke-static/range {v5 .. v12}, Landroid/support/v4/to0;->break(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v2

    iput v1, p0, Landroid/support/v4/no0;->throw:I

    new-instance v1, Landroid/support/v4/ro0;

    iget-object v3, p0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    invoke-direct {v1, v3, v0, v2}, Landroid/support/v4/ro0;-><init>(Ljava/lang/String;Ljava/math/BigInteger;[Ljava/math/BigInteger;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Round1 payload must be validated prior to creating Round2 payload for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Round2 payload already created for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public goto(Landroid/support/v4/so0;Ljava/math/BigInteger;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/xs;
        }
    .end annotation

    iget v0, p0, Landroid/support/v4/no0;->throw:I

    const/16 v1, 0x46

    if-ge v0, v1, :cond_1

    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v4/so0;->if()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/to0;->throws(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/no0;->goto:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v4/so0;->if()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/to0;->default(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/no0;->goto:Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v4/no0;->catch:Ljava/math/BigInteger;

    iget-object v6, p0, Landroid/support/v4/no0;->class:Ljava/math/BigInteger;

    iget-object v7, p0, Landroid/support/v4/no0;->const:Ljava/math/BigInteger;

    iget-object v8, p0, Landroid/support/v4/no0;->final:Ljava/math/BigInteger;

    iget-object v10, p0, Landroid/support/v4/no0;->for:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Landroid/support/v4/so0;->do()Ljava/math/BigInteger;

    move-result-object v11

    move-object v9, p2

    invoke-static/range {v3 .. v11}, Landroid/support/v4/to0;->static(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/no0;->catch:Ljava/math/BigInteger;

    iput-object p1, p0, Landroid/support/v4/no0;->class:Ljava/math/BigInteger;

    iput-object p1, p0, Landroid/support/v4/no0;->const:Ljava/math/BigInteger;

    iput-object p1, p0, Landroid/support/v4/no0;->final:Ljava/math/BigInteger;

    iput v1, p0, Landroid/support/v4/no0;->throw:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Keying material must be calculated validated prior to validating Round3 payload for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Validation already attempted for round3 payload for"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public if()Landroid/support/v4/qo0;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/no0;->throw:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v1, v0, Landroid/support/v4/no0;->case:Ljava/math/BigInteger;

    iget-object v3, v0, Landroid/support/v4/no0;->new:Ljava/security/SecureRandom;

    invoke-static {v1, v3}, Landroid/support/v4/to0;->catch(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/no0;->this:Ljava/math/BigInteger;

    iget-object v1, v0, Landroid/support/v4/no0;->case:Ljava/math/BigInteger;

    iget-object v3, v0, Landroid/support/v4/no0;->new:Ljava/security/SecureRandom;

    invoke-static {v1, v3}, Landroid/support/v4/to0;->class(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/no0;->break:Ljava/math/BigInteger;

    iget-object v1, v0, Landroid/support/v4/no0;->try:Ljava/math/BigInteger;

    iget-object v3, v0, Landroid/support/v4/no0;->else:Ljava/math/BigInteger;

    iget-object v4, v0, Landroid/support/v4/no0;->this:Ljava/math/BigInteger;

    invoke-static {v1, v3, v4}, Landroid/support/v4/to0;->for(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/no0;->catch:Ljava/math/BigInteger;

    iget-object v1, v0, Landroid/support/v4/no0;->try:Ljava/math/BigInteger;

    iget-object v3, v0, Landroid/support/v4/no0;->else:Ljava/math/BigInteger;

    iget-object v4, v0, Landroid/support/v4/no0;->break:Ljava/math/BigInteger;

    invoke-static {v1, v3, v4}, Landroid/support/v4/to0;->for(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/no0;->class:Ljava/math/BigInteger;

    iget-object v3, v0, Landroid/support/v4/no0;->try:Ljava/math/BigInteger;

    iget-object v4, v0, Landroid/support/v4/no0;->case:Ljava/math/BigInteger;

    iget-object v5, v0, Landroid/support/v4/no0;->else:Ljava/math/BigInteger;

    iget-object v6, v0, Landroid/support/v4/no0;->catch:Ljava/math/BigInteger;

    iget-object v7, v0, Landroid/support/v4/no0;->this:Ljava/math/BigInteger;

    iget-object v8, v0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    iget-object v9, v0, Landroid/support/v4/no0;->for:Lorg/bouncycastle/crypto/Digest;

    iget-object v10, v0, Landroid/support/v4/no0;->new:Ljava/security/SecureRandom;

    invoke-static/range {v3 .. v10}, Landroid/support/v4/to0;->break(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v15

    iget-object v3, v0, Landroid/support/v4/no0;->try:Ljava/math/BigInteger;

    iget-object v4, v0, Landroid/support/v4/no0;->case:Ljava/math/BigInteger;

    iget-object v5, v0, Landroid/support/v4/no0;->else:Ljava/math/BigInteger;

    iget-object v6, v0, Landroid/support/v4/no0;->class:Ljava/math/BigInteger;

    iget-object v7, v0, Landroid/support/v4/no0;->break:Ljava/math/BigInteger;

    iget-object v8, v0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    iget-object v9, v0, Landroid/support/v4/no0;->for:Lorg/bouncycastle/crypto/Digest;

    iget-object v10, v0, Landroid/support/v4/no0;->new:Ljava/security/SecureRandom;

    invoke-static/range {v3 .. v10}, Landroid/support/v4/to0;->break(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v16

    iput v2, v0, Landroid/support/v4/no0;->throw:I

    new-instance v1, Landroid/support/v4/qo0;

    iget-object v12, v0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    iget-object v13, v0, Landroid/support/v4/no0;->catch:Ljava/math/BigInteger;

    iget-object v14, v0, Landroid/support/v4/no0;->class:Ljava/math/BigInteger;

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Landroid/support/v4/qo0;-><init>(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;)V

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Round1 payload already created for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public new(Ljava/math/BigInteger;)Landroid/support/v4/so0;
    .locals 11

    iget v0, p0, Landroid/support/v4/no0;->throw:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_1

    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    iget-object v3, p0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/no0;->goto:Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v4/no0;->catch:Ljava/math/BigInteger;

    iget-object v6, p0, Landroid/support/v4/no0;->class:Ljava/math/BigInteger;

    iget-object v7, p0, Landroid/support/v4/no0;->const:Ljava/math/BigInteger;

    iget-object v8, p0, Landroid/support/v4/no0;->final:Ljava/math/BigInteger;

    iget-object v10, p0, Landroid/support/v4/no0;->for:Lorg/bouncycastle/crypto/Digest;

    move-object v9, p1

    invoke-static/range {v3 .. v10}, Landroid/support/v4/to0;->else(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)Ljava/math/BigInteger;

    move-result-object p1

    iput v1, p0, Landroid/support/v4/no0;->throw:I

    new-instance v0, Landroid/support/v4/so0;

    iget-object v1, p0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/support/v4/so0;-><init>(Ljava/lang/String;Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keying material must be calculated prior to creating Round3 payload for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Round3 payload already created for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/no0;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public try()I
    .locals 1

    iget v0, p0, Landroid/support/v4/no0;->throw:I

    return v0
.end method
